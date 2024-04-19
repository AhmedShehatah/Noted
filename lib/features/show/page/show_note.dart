import 'package:flutter/material.dart';
import '../../../core/di/di_manager.dart';
import '../../../core/utils/screen_utils.dart';

import '../../../core/constants/brand_colors.dart';
import '../../../core/widgets/secondary_appbar.dart';
import '../../../data/db/setup/db_setup.dart';
import '../../editor/editor.dart';

class ShowNote extends StatefulWidget {
  const ShowNote({super.key, required this.note});
  static const String routeName = "/ShoworPage";

  final NoteData note;
  @override
  State<StatefulWidget> createState() => _ShowNoteState();
}

class _ShowNoteState extends State<ShowNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondaryAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.width),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.height),
              Text(
                widget.note.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.width,
                    color: BrandColors.white),
              ),
              SizedBox(height: 20.height),
              Text(
                widget.note.content,
                style: TextStyle(fontSize: 20.width, color: BrandColors.white),
              ),
              ElevatedButton(
                  onPressed: () {
                    DIManager.findNavigator().pushNamed(EditorPage.routeName,
                        arguments: widget.note);
                  },
                  child: const Text("edit"))
            ],
          ),
        ),
      ),
    );
  }
}
