import 'package:anilist_ui/common/widgets/text_span_link.dart';
import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../common/util/navigation_util.dart';
import '../config/environment.dart';
import '../state/auth_state.dart';

String _oauthLink =
    'https://anilist.co/api/v2/oauth/authorize?client_id=${Environment.anilistClientID}&response_type=token';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Column(children: [
        Expanded(
          child: Row(children: [
            Spacer(flex: 1),
            Expanded(
              flex: 5,
              child: Column(children: [
                Spacer(flex: 8),
                SizedBox(
                  width: 340,
                  child: PageContent(),
                ),
                Spacer(flex: 10),
              ]),
            ),
            Spacer(flex: 1),
          ]),
        ),
      ]),
    );
  }
}

class PageContent extends HookWidget {
  const PageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final loginSelected = useState<bool>(false);
    final authToken = useState<String>('');
    final isCheckingAuth = useState<bool>(false);
    final errorText = useState<String?>(null);

    var authState = context.watch<AuthState>();

    TextSpan anilistText = TextSpanUtil.textLink(
      text: 'anilist.co',
      url: 'https://anilist.co',
      context: context,
    );

    var initialView = Column(
      children: [
        Text.rich(
          TextSpan(
            text: "You'll be redirected to ",
            children: [
              anilistText,
              const TextSpan(
                text: " to login and authorize this app. Make sure the URL is ",
              ),
              anilistText,
              const TextSpan(text: " before logging in."),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            bool success = await NavigationUtil.launchExternalUrl(_oauthLink);
            // TODO: handle url launch failure
            loginSelected.value = true;
          },
          child: const Text('Login'),
        ),
      ],
    );

    Future<void> checkAuthorization() async {
      errorText.value = null;
      isCheckingAuth.value = true;

      String token = authToken.value.trim();
      if (token.isEmpty) {
        errorText.value = 'Text cannot be empty.';
      } else {
        bool success = await authState.updateToken(token);
        if (success) {
          if (context.mounted) const BrowseRoute().go(context);
        } else {
          errorText.value = 'Unable to authenticate. Please retry.';
        }
      }

      isCheckingAuth.value = false;
    }

    var promptView = Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'Paste the text given by ',
            children: [
              anilistText,
              const TextSpan(text: ', then authorize.'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          onChanged: (value) => authToken.value = value,
          onSubmitted: (value) async {
            authToken.value = value;
            await checkAuthorization();
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Paste text',
            errorText: errorText.value,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                loginSelected.value = false;
                errorText.value = null;
              },
              child: const Text('Retry'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: checkAuthorization,
              child: const Text('Authorize'),
            ),
          ],
        ),
      ],
    );

    if (loginSelected.value == false) return initialView;
    return isCheckingAuth.value
        ? const Center(child: CircularProgressIndicator())
        : promptView;
  }
}
