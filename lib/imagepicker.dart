// ignore_for_file: unused_field

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(List<String> args) {
  runApp(ImagePickerFlutter());
}

class ImagePickerFlutter extends StatelessWidget {
  const ImagePickerFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImagePickerHomePage(),
    );
  }
}

class ImagePickerHomePage extends StatefulWidget {
  const ImagePickerHomePage({Key? key}) : super(key: key);

  @override
  _ImagePickerHomePageState createState() => _ImagePickerHomePageState();
}

class _ImagePickerHomePageState extends State<ImagePickerHomePage> {
  File? _image;

  Future CameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  Future ImageFromGallary() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Image Picker'),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 500,
                        width: double.infinity,
                        color: Colors.blue,
                        child: _image == null
                            ? Center(child: Text('No image selected'))
                            : Image.file(_image!)),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            CameraImage();
                          },
                          child: const Icon(Icons.camera),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            ImageFromGallary();
                          },
                          child: const Icon(Icons.photo_library),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
