import 'package:flutter/material.dart';
import 'package:new_project/widgets/custom_drawer.dart';
import 'package:new_project/widgets/feature_drop_down.dart';
import 'package:new_project/widgets/image_picker.dart';

class Predict extends StatefulWidget {
  const Predict({Key? key}) : super(key: key);

  @override
  State<Predict> createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Predict"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    DropDownFeatures(),
                    SizedBox(
                      height: 20,
                    ),
                    GetImage(),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 50,
                ),
                child: Text("Get Result"),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(
      //         5,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   onPressed: () {
      //     // ToDo Here
      //   },
      //   label: const Padding(
      //     padding: EdgeInsets.symmetric(
      //       vertical: 8.0,
      //       horizontal: 50,
      //     ),
      //     child: Text("Get Result"),
      //   ),
      // ),
    );
  }
}
