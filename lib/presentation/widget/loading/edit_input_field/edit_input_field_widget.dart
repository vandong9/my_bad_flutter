import 'package:flutter/material.dart';

class PairKeyValueWidget extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Function(double) valueChanged;

  String fieldName;
  String value;
  PairKeyValueWidget(
      {super.key,
      required this.fieldName,
      required this.value,
      required this.valueChanged});

  @override
  Widget build(BuildContext context) {
    controller.text = value;
    return Container(
      child: Row(
        children: [
          SizedBox(width: 200, child: Text(fieldName)),
          SizedBox(
            width: 200,
            child: TextField(
              onEditingComplete: () {
                double doubleValue = double.parse(controller.text);
                valueChanged(doubleValue);
              },
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
