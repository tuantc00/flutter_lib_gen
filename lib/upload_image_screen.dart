import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_lib_test/upload_image_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'gen/assets.gen.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  String imageUploaded = "";
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    const Text('Ảnh import và gen '),
                    //Image.asset('${AssetGenImage('${Assets.z6024847751787148cf848f4d7d8cc6d472e9919dd7103}')}'),
                    Expanded(
                        child: Image.asset(Assets
                            .z6024847751787148cf848f4d7d8cc6d472e9919dd7103
                            .path)),
                    Assets.logo.svg(),



                    imageUploaded == ""
                        ? const SizedBox()
                        : SizedBox(
                            height: 350,
                            width: 350,
                            child: Image.network(
                              imageUploaded,
                            ),
                          ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? image =
                            await picker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            isLoading = true;
                          });
                          Uint8List bytes = await image.readAsBytes();
                          UploadApiImage()
                              .uploadImage(bytes, image.name)
                              .then((value) {
                            setState(() {
                              imageUploaded = value['location'].toString();
                              isLoading = false;
                            });
                            print(
                                "Updated Successfully with link ${value.toString()}");
                          }).onError((error, stackTrace) {
                            setState(() {
                              isLoading = true;
                            });
                            print(error.toString());
                          });
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Upload Image",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
