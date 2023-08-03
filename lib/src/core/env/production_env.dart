import 'package:envied/envied.dart';

import '../base/env.dart';
import '../constants/env_keys.dart';

part 'production_env.g.dart';

@Envied(name: EnvKeys.prodEnv, path: EnvKeys.prodEnvPath)
class ProductionEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.authImageUrlKey)
  String authImageUrl = _ProductionEnv.authImageUrl;
}
