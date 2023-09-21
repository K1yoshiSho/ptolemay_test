
DependenciesContainer dependenciesContainer = DependenciesContainer();

class DependenciesContainer {
  static final DependenciesContainer _instance = DependenciesContainer._internal();

  factory DependenciesContainer() {
    return _instance;
  }

  DependenciesContainer._internal();

  // LatLng? _currentPostion;

  // void init({
  //   required LatLng position,
  // }) {
  //   _instance.registerPosition(position);
  // }

  // void registerPosition(LatLng position) {
  //   _currentPostion = position;
  // }

  // LatLng? get position => _currentPostion;
}
