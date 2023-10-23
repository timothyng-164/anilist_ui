import 'dart:math';

import 'package:anilist_ui/common/model/server_response.dart';
import 'package:anilist_ui/common/util/server_response_util.dart';
import 'package:anilist_ui/graphql/anilist/getAuthenticatedUser.graphql.dart';
import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../state/auth_state.dart';

// TODO: move client ID to config file
const String _anilistClientID = '14759';
Uri _anlistOauthUrl = Uri.parse(
    'https://anilist.co/api/v2/oauth/authorize?client_id=$_anilistClientID&response_type=token');

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginSelected = useState<bool>(false);
    final authToken = useState<String>('');
    final isCheckingAuth = useState<bool>(false);
    final errorText = useState<String?>(null);

    var authState = context.watch<AuthState>();
    final textTheme = Theme.of(context).textTheme;

    TextSpan anilistText = const TextSpan(
        text: "anilist.co",
        style: TextStyle(decoration: TextDecoration.underline));

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
            await _launchOauth();
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

    Widget selectView() {
      if (loginSelected.value == false) return initialView;
      return isCheckingAuth.value
          ? const CircularProgressIndicator()
          : promptView;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 5,
              child: Column(children: [
                const Spacer(flex: 8),
                SizedBox(width: 400, child: selectView()),
                const Spacer(flex: 10),
              ]),
            ),
            const Spacer(flex: 1),
          ]),
        ),
      ]),
    );
  }
}

Future<void> _launchOauth() async {
  try {
    if (!await launchUrl(_anlistOauthUrl)) {
      throw Exception('Could not launch $_anlistOauthUrl');
    }
  } catch (e) {
    // TODO: display error in snackbar.
    print('Unknown exception opening oauth url: $e');
  }
}
