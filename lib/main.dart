import 'dart:io';

import 'package:belajar_get/controller/upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PickImage(),
    );
  }
}

class PickImage extends StatelessWidget {
  final controller = Get.put(UploadImage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => controller.getImage(ImageSource.gallery),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.grey,
            child: Obx(
              () {
                return (controller.images.value =="")
                    ? Center(
                        child: FlutterLogo(),
                      )
                    : Image.file(File(controller.images.value));
              },
            ),
          ),
        ),
      ),
    );
  }
}
