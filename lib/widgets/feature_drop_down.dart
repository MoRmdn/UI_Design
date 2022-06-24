import 'package:flutter/material.dart';

class DropDownFeatures extends StatefulWidget {
  const DropDownFeatures({Key? key}) : super(key: key);

  @override
  State<DropDownFeatures> createState() => _DropDownFeaturesState();
}

class _DropDownFeaturesState extends State<DropDownFeatures> {
  String dropdownValue1 = "Feature 1";
  String dropdownValue2 = "Feature 2";
  String dropdownValue3 = "Feature 3";
  String dropdownValue4 = "Feature 4";
  String dropdownValue5 = "Feature 5";
  String dropdownValue6 = "Feature 6";
  String dropdownValue7 = "Feature 7";
  double itemCount = 0;
  List<String> feature1 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature2 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature3 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature4 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature5 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature6 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  List<String> feature7 = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6",
    "Feature 7",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue1,
            hint: const Text("Feature 1"),
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 15,
            // style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue1 = newValue!;
              });
            },
            items: feature1.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue1,
            hint: const Text("Feature 1"),
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 15,
            // style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue1 = newValue!;
              });
            },
            items: feature1.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue2,
            hint: const Text("Feature 1"),
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 15,
            // style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue2 = newValue!;
              });
            },
            items: feature2.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue3,
            hint: const Text("Feature 1"),
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 15,
            // style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue3 = newValue!;
              });
            },
            items: feature3.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue4,
            hint: const Text("Feature 1"),
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 15,
            // style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue4 = newValue!;
              });
            },
            items: feature4.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        if (itemCount == 1 || itemCount == 2 || itemCount == 3)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue5,
              hint: const Text("Feature 1"),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 15,
              // style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Theme.of(context).colorScheme.primary,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue5 = newValue!;
                });
              },
              items: feature5.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        if (itemCount == 2 || itemCount == 3)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue6,
              hint: const Text("Feature 1"),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 15,
              // style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Theme.of(context).colorScheme.primary,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue6 = newValue!;
                });
              },
              items: feature6.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        if (itemCount == 3)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue7,
              hint: const Text("Feature 1"),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 15,
              // style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Theme.of(context).colorScheme.primary,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue7 = newValue!;
                });
              },
              items: feature7.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Add another Feature",
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
                  if (itemCount >= 0 && itemCount < 3) {
                    setState(() {
                      itemCount++;
                    });
                  }
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
