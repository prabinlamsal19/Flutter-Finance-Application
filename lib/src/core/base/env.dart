abstract class EnvVars {
  String get authImageUrl;
}

class Env implements EnvVars {
  Env._();
  static Env? _instance;
  late EnvVars _env;

  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  void createEnv(EnvVars incomingEnv) => _env = incomingEnv;

  @override
  String get authImageUrl => _env.authImageUrl;
}
