import 'base_env_config.dart';
import 'ipalastaging_env_config.dart';

enum Environment { ipalaStaging }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.ipalaStaging:
        return IpalastagingEnvConfig();
      default:
        return IpalastagingEnvConfig();
    }
  }
}
