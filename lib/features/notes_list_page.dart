import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../controller/notes_controller.dart';
import '../core/constants/brand_colors.dart';
import '../core/di/di_manager.dart';
import '../core/utils/screen_utils.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../core/widgets/main_appbar.dart';
import 'add_notes/page/add_notes.dart';
import 'show/page/show_note.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({super.key});
  static const String routeName = "/notesListpage";

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  final List colors = const [
    Color(0xFF91F48F),
    Color(0xFFFF9E9E),
    Color(0xFFFD99FF),
    Color(0xFFFFF599),
    Color(0xFF9EFFFF)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MainAppBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: BrandColors.grey,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            DIManager.findNavigator().pushNamed(AddNotes.routeName);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
          child: Obx(() {
            final notes = DIManager.findDep<NotesController>().getAllNotes();
            if (notes.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/empty.png'),
                    10.emptyHeight,
                    const Text(
                      'Create Your First Note',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          DIManager.findDep<NotesController>()
                              .deleNote(notes[index].id);
                        },
                        icon: Icons.delete,
                        backgroundColor: const Color(0xFFFF0000),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      DIManager.findNavigator().pushNamed(ShowNote.routeName,
                          arguments: notes[index]);
                    },
                    child: Card(
                      color: colors[math.Random().nextInt(colors.length)],
                      child: Container(
                        width: 0.screenWidth,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.height, horizontal: 10.width),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              notes[index].title.length > 20
                                  ? '${notes[index].title.substring(0, 20)}...'
                                  : notes[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              notes[index].content.length > 40
                                  ? '${notes[index].content.substring(0, 40)}...'
                                  : notes[index].content,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ));
  }
}
