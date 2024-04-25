import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/colors.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';

class CheckoutTextField extends StatefulWidget {
  String enter_text;
  double size_width;
  CheckoutTextField({Key? key, required this.enter_text, required this.size_width}) : super(key: key);

  @override
  _CheckoutTextFieldState createState() => _CheckoutTextFieldState();
}

class _CheckoutTextFieldState extends State<CheckoutTextField> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/41.1,                  /// 10.0
          0,
          SizeConfig.screenWidth!/82.2,                  /// 5.0
          SizeConfig.screenHeight!/85.37                 /// 8.0
      ),
      child: Container(
        width: SizeConfig.screenWidth!/widget.size_width,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: TextField(
          style: TextStyle(color: textColor),
          cursorColor: textColor,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1,color: Colors.transparent),
            ) ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: widget.enter_text,
            hintStyle: const TextStyle(color: Colors.black26),
          ),
        ),
      ),
    );
  }
}
