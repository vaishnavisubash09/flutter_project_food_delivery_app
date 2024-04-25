import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/colors.dart';

class CheckBoxSave extends StatefulWidget {
  String save_text;
  CheckBoxSave({Key? key, required this.save_text}) : super(key: key);

  @override
  _CheckBoxSaveState createState() => _CheckBoxSaveState();
}

class _CheckBoxSaveState extends State<CheckBoxSave> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return freeDelivery;
      }
      return buttonColor;
    }

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.save_text, style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),)
      ],
    );
  }
}
