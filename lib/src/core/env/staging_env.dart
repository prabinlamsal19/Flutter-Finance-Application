import 'package:envied/envied.dart';

import '../base/env.dart';
import '../constants/env_keys.dart';

part 'staging_env.g.dart'

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class StagingEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.authImageUrlDev)
  String authImageUrl = _StagingEnv.authImageUrl;
}
