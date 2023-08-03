import 'package:envied/envied.dart';

import '../base/env.dart';
import '../constants/env_keys.dart';

part 'staging_env.g.dart';

@Envied(name: EnvKeys.stageEnv, path: EnvKeys.stageEnvPath)
class StagingEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.authImageUrlKey)
  String authImageUrl = _StagingEnv.authImageUrl;
}
