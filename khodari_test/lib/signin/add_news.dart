import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FileUploadButton extends StatefulWidget {
  const FileUploadButton({super.key});

  @override
  State<FileUploadButton> createState() => _FileUploadButtonState();
}

class _FileUploadButtonState extends State<FileUploadButton> {
  String _imageFile = '';
  Uint8List? selectedImageInBytes;
  final _contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        labelText: ' Title',
                      ),
                    ),
                    TextFormField(
                      controller: _contentController,
                      decoration: const InputDecoration(
                        labelText: ' content',
                      ),
                    ),
                  ],
                )),
            if (_imageFile.isNotEmpty || _imageFile != '')
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.memory(selectedImageInBytes!)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calling pickImage Method
                pickImage();
              },
              child: const Text('Pick Image'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  // Calling uploadImage Method
                  await uploadImage(selectedImageInBytes!, _imageFile,
                      _titleController.text, _contentController.text);
                },
                child: const Text('Upload Image To Firebase Storage')),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    try {
      // Pick image using file_picker package
      FilePickerResult? fileResult = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      // If user picks an image, save selected image to variable
      if (fileResult != null) {
        setState(() {
          _imageFile = fileResult.files.first.name;
          selectedImageInBytes = fileResult.files.first.bytes;
        });
      }
    } catch (e) {
      // If an error occured, show SnackBar with error message
      if (!context.mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error:$e")));
    }
  }

  // Method to upload selected image in flutter web
  // This method will get selected image in Bytes
  Future<String> uploadImage(Uint8List selectedImageInBytes, String name,
      String title, String content) async {
    try {
      // This is referance where image uploaded in firebase storage bucket
      Reference ref = FirebaseStorage.instance.ref().child('News/$name');

      // metadata to save image extension
      final metadata = SettableMetadata(contentType: 'image/jpeg');

      // UploadTask to finally upload image
      UploadTask uploadTask = ref.putData(selectedImageInBytes, metadata);
      final downloadurl = await ref.getDownloadURL();

      // After successfully upload show SnackBar
      await uploadTask.whenComplete(() => ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Image Uploaded"))));
      await FirebaseFirestore.instance.collection("users").doc().set({
        "DownloadUrl": downloadurl,
        "Content": content,
        "title": title,
      });
      _contentController.clear();
      _titleController.clear();
      _imageFile = '';
      selectedImageInBytes.clear();

      return await ref.getDownloadURL();
    } catch (e) {
      // If an error occured while uploading, show SnackBar with error message
      if (!context.mounted) return '';
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    return '';
  }
}
