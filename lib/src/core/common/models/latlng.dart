class LatLng {
  final double latitude;
  final double longitude;

  LatLng(this.latitude, this.longitude);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is LatLng && runtimeType == other.runtimeType && latitude == other.latitude && longitude == other.longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;

  @override
  String toString() {
    return 'LatLng{latitude: $latitude, longitude: $longitude}';
  }
}
