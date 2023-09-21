// lib/config/base_config.dart

import 'package:flutter/material.dart';

enum Environment { dev, prod, stg }

const configMap = {
  Environment.dev: DevConfig(),
  Environment.prod: ProdConfig(),
  Environment.stg: StgConfig(),
};

@immutable
sealed class BaseConfig {
  final Environment environment;
  final String appName;

  const BaseConfig({required this.environment, required this.appName});

  get getEnvironment => environment;

  get getAppName => appName;

  get isDev => environment == Environment.dev;

  get isProd => environment == Environment.prod;

  get isStg => environment == Environment.stg;
}

class DevConfig extends BaseConfig {
  const DevConfig() : super(environment: Environment.dev, appName: "[DEV] Ptolemay");
}

class ProdConfig extends BaseConfig {
  const ProdConfig() : super(environment: Environment.prod, appName: "Ptolemay");
}

class StgConfig extends BaseConfig {
  const StgConfig() : super(environment: Environment.stg, appName: "[STG] Ptolemay");
}
