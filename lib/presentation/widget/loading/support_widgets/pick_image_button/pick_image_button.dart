import 'package:flutter/material.dart';
import 'package:my_bad/data/model/render_object/render_object_config.dart';

class PickImageButtonWidget extends StatefulWidget {
  String? initValue;
  Function(String) onSelected;
  PickImageButtonWidget(
      {super.key, required this.initValue, required this.onSelected});

  @override
  State<StatefulWidget> createState() => PickImageButtonWidgetState();
}

class PickImageButtonWidgetState extends State<PickImageButtonWidget> {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          widget.onSelected(value!);

          setState(() {
            dropdownValue = value!;
          });
        },
        items:
            mapVibImageAsset.keys.map<DropdownMenuItem<String>>((String value) {
          String imageFile = mapVibImageAsset[value] ?? "";
          return DropdownMenuItem<String>(
            value: value,
            child: Row(children: [
              imageFile.isEmpty
                  ? Container(
                      width: 20,
                      height: 20,
                    )
                  : Image.asset(
                      imageFile,
                      width: 20,
                      height: 20,
                    ),
              SizedBox(
                width: 4,
              ),
              Text(value)
            ]),
          );
        }).toList(),
      ),
    );
  }
}
