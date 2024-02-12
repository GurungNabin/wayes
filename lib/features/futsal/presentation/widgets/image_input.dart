import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? _selectImage;

  //take picture from camera
  void _takePhoto() async {
    final imagePicker = ImagePicker();
    final takeImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (takeImage == null) {
      return;
    }
    setState(() {
      _selectImage = File(takeImage.path);
    });
    widget.onPickImage(_selectImage!);
  }

  //pick picture from gallery
  void _pickPhoto() async {
    final imagePicker = ImagePicker();
    final pickImage =
        await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 600);
    if (pickImage == null) {
      return;
    }
    setState(() {
      _selectImage = File(pickImage.path);
    });
    widget.onPickImage(_selectImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget clickPhoto = _selectImage != null
        ? GestureDetector(
            onTap: _takePhoto,
            child: Image.file(
              _selectImage!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          )
        : TextButton.icon(
            onPressed: _takePhoto,
            icon: const Icon(Icons.camera),
            label: const Text('Take Picture'),
          );

    Widget selectPhoto = _selectImage != null
        ? GestureDetector(
            onTap: _pickPhoto,
            child: Image.file(
              _selectImage!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          )
        : TextButton.icon(
            onPressed: _pickPhoto,
            icon: const Icon(Icons.photo_camera_back_outlined),
            label: const Text('Pick a photo'),
          );

    return Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        children: [
          // Click photo
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                ),
              ),
              alignment: Alignment.center,
              child: clickPhoto,
            ),
          ),
          // Select photo
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                ),
              ),
              alignment: Alignment.center,
              child: selectPhoto,
            ),
          ),
        ],
      ),
    );
  }
}
