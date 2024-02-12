import 'package:flutter/material.dart';
import 'package:wayes/features/futsal/domain/entites/places.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key, required this.onSelectLocation});

  final void Function(PlaceLocation location) onSelectLocation;

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  PlaceLocation? _pickedLoaction;
  var _isGettingLocation = false;


  @override
  Widget build(BuildContext context) {


    return  Column();
  }
}