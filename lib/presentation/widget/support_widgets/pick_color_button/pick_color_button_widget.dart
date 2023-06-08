import 'package:flutter/material.dart';
import 'package:my_bad/data/model/render_object/render_object_config.dart';

class PickColorButtonWidget extends StatefulWidget {
  String? initValue;
  Function(String) onSelected;
  PickColorButtonWidget(
      {super.key, required this.initValue, required this.onSelected});
  @override
  State<StatefulWidget> createState() => PickColorButtonWidgetState();
}

class PickColorButtonWidgetState extends State<PickColorButtonWidget> {
  String? dropdownValue = mapVIbColorName.keys.first;

  @override
  void initState() {
    dropdownValue = widget.initValue;
    if (widget.initValue == null || widget.initValue!.isEmpty) {
      dropdownValue = "clear";
    }

    super.initState();
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
            mapVIbColorName.keys.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(children: [
              Container(
                width: 20,
                height: 20,
                color: mapVIbColorName[value],
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
