import 'package:flutter/material.dart';

import '../../../controller/notes_controller.dart';
import '../../../core/constants/brand_colors.dart';
import '../../../core/di/di_manager.dart';
import '../../../core/utils/screen_utils.dart';
import '../../../core/widgets/edit_appbar.dart';
import '../widgets/info_dialog.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});
  static const String routeName = "/AddNotes";

  @override
  State<StatefulWidget> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EditAppBar(),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.all(16.height),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      text: "Are you sure you want to add this note?",
                      colorRight: Colors.green,
                      onPressRight: () {
                        DIManager.findDep<NotesController>().insertNote(
                            title: _titleController.text,
                            content: _contentController.text);
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Your note has been added successfully'),
                          ),
                        );
                      },
                      textButRight: "Save",
                      colorLeft: Colors.red,
                      textButLeft: "Discard",
                      onPressLeft: () {
                        Navigator.of(context).pop();
                      },
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