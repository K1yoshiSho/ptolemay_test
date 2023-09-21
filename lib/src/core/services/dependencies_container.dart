import 'package:flutter/material.dart';

DependenciesContainer dependenciesContainer = DependenciesContainer();

class DependenciesContainer {
  static final DependenciesContainer _instance = DependenciesContainer._internal();

  factory DependenciesContainer() {
    return _instance;
  }

  DependenciesContainer._internal();

  Offset? _switcherOffset;

  void registerPosition(Offset position) {
    _switcherOffset = position;
  }

  Offset? get position => _switcherOffset;
}
