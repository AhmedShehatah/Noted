import 'package:flutter/material.dart';

import '../widgets/show_dialog.dart';

class ShowDialogIcon extends StatelessWidget {
  const ShowDialogIcon({super.key});
  static const String routeName = "/ShowDialogIconPage";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Show',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => ShowDialog(
            colorRight: Colors.green,
            onPressRight: () {},
            textButRight: "Save",
            colorLeft: Colors.red,
            textButLeft: "Discard",
            onPressLeft: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => ShowDialog(
                      colorRight: Colors.green,
                      textButRight: "Keep",
                      colorLeft: Colors.red,
                      textButLeft: "Discard",
                      text: "Are your sure you want discard your changes ?",
                      onPressRight: () {},
                      onPressLeft: () {}));
            },
            text: "Save changes ?",
          ),
        );
      },
    );
  }
}
