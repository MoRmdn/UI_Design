import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'widgets/custom_drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("My Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.4,
                width: double.infinity,
                child: Center(
                  child: Stack(children: [
                    if (pickedImage != null)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(110),
                            border: Border.all(
                              width: 5,
                              color: Theme.of(context).colorScheme.primary,
                            )),
                        child: CircleAvatar(
                            radius: 100,
                            backgroundColor: const Color(0xff0091BE),
                            backgroundImage: FileImage(
                              pickedImage!,
                            )),
                      ),
                    Positioned(
                      bottom: 15,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: IconButton(
                          onPressed: chooseSource,
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    if (pickedImage == null)
                      const CircleAvatar(
                        radius: 100,
                        backgroundColor: Color(0xff0091BE),
                        backgroundImage: NetworkImage(
                          "https://skans.pk/wp-content/uploads/2020/03/1.png",
                        ),
                      ),
                    Positioned(
                      bottom: 15,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: IconButton(
                          onPressed: chooseSource,
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: "First Name"),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: "Last Name"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Email"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(hintText: "National ID"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Phone Number"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Address"),
                      ),
                    ],
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
