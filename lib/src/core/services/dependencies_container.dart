import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

DependenciesContainer dependenciesContainer = DependenciesContainer();

class DependenciesContainer {
  static final DependenciesContainer _instance = DependenciesContainer._internal();

  factory DependenciesContainer() {
    return _instance;
  }

  DependenciesContainer._internal();

  Offset? _switcherOffset;
  late Talker _talker;

  void registerPosition(Offset position) {
    _switcherOffset = position;
  }

  void registerTalker(Talker talker) {
    _talker = talker;
  }

  Offset? get position => _switcherOffset;
  Talker get talker => _talker;
}
