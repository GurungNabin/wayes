import 'dart:io';
import 'package:uuid/uuid.dart';

const uuid = Uuid();


class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;

  PlaceLocation(
      {required this.latitude, required this.longitude, required this.address});
}

class Place {
  final String id;
  final String name;
  final File image;
  final String description;
  final String price;
  final PlaceLocation location;

  Place(
      {String? id,
      required this.name,
      required this.location, 
      required this.image,
      required this.description,
      required this.price}) : id = id ?? uuid.v4();
}
