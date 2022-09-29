import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GetImage extends StatefulWidget {
  const GetImage({Key? key}) : super(key: key);

  @override
  _GetImageState createState() => _GetImageState();
}

class _GetImageState extends State<GetImage> {
  File? pickedImage;

  final ImagePicker _picker = ImagePicker();

  void chooseSource() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.QUESTION,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Image Source',
      desc: 'Choose Image Source',
      btnCancelText: 'Gallery',
      btnOkText: 'Camera',
      btnCancelColor: Colors.orange,
      btnCancelOnPress: () {
        _imagePicker(ImageSource.gallery);
      },
      btnOkOnPress: () {
        _imagePicker(ImageSource.camera);
      },
    ).show();
  }

  void _imagePicker(ImageSource imageSource) async {
    final imagePath =
        await _picker.pickImage(source: imageSource, imageQuality: 20);
    setState(() {
      pickedImage = File(imagePath!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Upload X-ray",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: IconButton(
                onPressed: () {
                  chooseSource();
                },
                icon: const Icon(
                  Icons.cloud_upload,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        if (pickedImage != null)
          const SizedBox(
            height: 20,
          ),
        if (pickedImage != null)
          Container(
            height: 500,
            margin: const EdgeInsets.only(top: 5, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.file(
                pickedImage!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
