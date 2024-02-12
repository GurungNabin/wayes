import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wayes/features/futsal/domain/entites/places.dart';
import 'package:wayes/features/futsal/presentation/widgets/image_input.dart';
import 'package:wayes/features/futsal/presentation/widgets/my_text_field.dart';

class AddPlaces extends StatefulWidget {
  const AddPlaces({super.key});

  static const String routeName = 'add-places';

  @override
  State<AddPlaces> createState() => _AddPlacesState();
}

class _AddPlacesState extends State<AddPlaces> {
  final _nameController = TextEditingController();
  final _desciptionController = TextEditingController();
  final _priceController = TextEditingController();
  File? _selectedImage;
  PlaceLocation? _selectedLocation;

  void _savePlace() {}

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Places',
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            //name
            MyTextField(_nameController, 'Name', false),
            const SizedBox(
              height: 8,
            ),
            //description
            MyTextField(
              _desciptionController,
              'Description',
              false,
              maxLines: 8,
            ),
            const SizedBox(
              height: 8,
            ),
            //pick image
            PickImage(
              onPickImage: (File image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            //price
            MyTextField(_priceController, 'Ticket', false),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
