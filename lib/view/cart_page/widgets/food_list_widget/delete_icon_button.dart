import 'package:flutter/material.dart';

class DeleteIconButton extends StatefulWidget {
  String foodName;
  DeleteIconButton({Key? key, required this.foodName}) : super(key: key);

  @override
  _DeleteIconButtonState createState() => _DeleteIconButtonState();
}

class _DeleteIconButtonState extends State<DeleteIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
              Text("Delete ${widget.foodName}?"),
              action: SnackBarAction(
                  label: "Yes",
                  onPressed: () {

                  }
              ),
            ),
          );
        },
        icon: const Icon(Icons.delete_outline, color: Colors.black54,));
  }
}
