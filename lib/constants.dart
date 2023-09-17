class MapType {
  String image;
  String title;
  MapType(this.image, this.title);
}

class CarType {
  String image;
  String title;
  CarType(this.image, this.title);
}

List<MapType> x = [
  MapType("assets/images/car.jpg", "Ride"),
  MapType("assets/images/map.png", "Intercity"),
];

List<CarType> cabType = [
  CarType("assets/images/car.jpg", "Entire Cabin"),
  CarType("assets/images/car.jpg", "Shared Ride"),
  CarType("assets/images/car.jpg", "Parcel"),
  CarType("assets/images/car.jpg", "Van"),
  CarType("assets/images/car.jpg", "Truck"),
];
