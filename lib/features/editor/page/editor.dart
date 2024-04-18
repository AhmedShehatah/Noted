import 'package:flutter/material.dart';

import '../../../controller/notes_controller.dart';
import '../../../core/constants/brand_colors.dart';
import '../../../core/di/di_manager.dart';
import '../../../core/utils/screen_utils.dart';
import '../widgets/info_dialog.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});
  static const String routeName = "/EditorPage";
  @override
  State<StatefulWidget> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

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
              //  DIManager.findDep<NotesController>().getAllNotes(),
              SizedBox(height: 20.height),
              TextFormField(
                controller: _titleController,
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
                controller: _contentController,
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
                      onPressRight: () {
                        DIManager.findDep<NotesController>().insertNote(
                            title: _titleController.text,
                            content: _contentController.text);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Changes saved successfully!'),
                          ),
                        );
                        Navigator.of(context).pop();
                      },
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
                            onPressRight: () {
                              DIManager.findDep<NotesController>().insertNote(
                                  title: _titleController.text,
                                  content: _contentController.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Changes saved successfully!'),
                                ),
                              );
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                            onPressLeft: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                          ),
                        );
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
