import 'package:envied/envied.dart';

part 'environment.g.dart';

@Envied()
abstract class Environment {
  @EnviedField(varName: 'ANILIST_CLIENT_ID')
  static const String anilistClientID = _Environment.anilistClientID;
}
