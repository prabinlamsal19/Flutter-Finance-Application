import 'package:envied/envied.dart';

import '../base/env.dart';
import '../constants/env_keys.dart';

part 'production_env.g.dart'

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class ProductionEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.authImageUrlDev)
  String authImageUrl = _ProductionEnv.authImageUrl;
}
