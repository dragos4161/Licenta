import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class PictureApi {

  PictureApi();
  String? downloadUrl;
  late File? _photo;

  firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

  Future<String?> getFromCamera() async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile == null) {
      return null;
    }
    _photo = File(pickedFile.path);

    final String fileName = basename(_photo!.path);
    const String destination = 'Dangers/';

    try {
      final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child(fileName);
      await ref.putFile(_photo!);

      return downloadUrl = await firebase_storage.FirebaseStorage.instance.ref('Dangers/').child(fileName).getDownloadURL();
    } catch (e) {
      if (kDebugMode) {
        print('error occurred');
      }
    }
    return null;

  }

  Future<File?> getFromGallery() async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return null;
    }
    return File(pickedFile.path);
  }
}
