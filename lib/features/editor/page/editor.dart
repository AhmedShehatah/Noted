import 'package:flutter/material.dart';

import '../../../core/constants/brand_colors.dart';
import '../../../core/utils/screen_utils.dart';
import '../widgets/info_dialog.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});
  static const String routeName = "/EditorPage";
  @override
  State<StatefulWidget> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.all(16.height),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.height),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration.collapsed(
                  hintText: "Title",
                  hintStyle: TextStyle(
                      color: BrandColors.greyTextColor, fontSize: 40.0.width),
                ),
                style: TextStyle(fontSize: 40.width, color: BrandColors.white),
              ),
              SizedBox(height: 20.height),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration.collapsed(
                  hintText: "Type Something...",
                  hintStyle: TextStyle(
                      color: BrandColors.greyTextColor, fontSize: 25.0.width),
                ),
                style:
                    TextStyle(fontSize: 25.0.width, color: BrandColors.white),
              ),
              ElevatedButton(
                child: const Text(
                  'Show',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => InfoDialog(
                      colorRight: Colors.green,
                      onPressRight: () {},
                      textButRight: "Save",
                      colorLeft: Colors.red,
                      textButLeft: "Discard",
                      onPressLeft: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => InfoDialog(
                                colorRight: Colors.green,
                                textButRight: "Keep",
                                colorLeft: Colors.red,
                                textButLeft: "Discard",
                                text:
                                    "Are your sure you want discard your changes ?",
                                onPressRight: () {},
                                onPressLeft: () {}));
                      },
                      text: "Save changes ?",
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
