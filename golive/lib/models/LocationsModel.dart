class LocationsList {
  late List<Location> _locations;

  List<Location> get locations => _locations;
}

class Location {
  Media profilePicture;
  late String name;
  late int id;
}
