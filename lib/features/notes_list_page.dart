import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;
import '../core/constants/brand_colors.dart';
import '../core/utils/screen_utils.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: BrandColors.grey,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Slidable(
                endActionPane:
                    ActionPane(motion: const ScrollMotion(), children: [
                  SlidableAction(
                    onPressed: (context) {},
                    icon: Icons.delete,
                    backgroundColor: const Color(0xFFFF0000),
                  ),
                ]),
                child: Card(
                  color: colors[math.Random().nextInt(colors.length)],
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.height, horizontal: 10.width),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "The Title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Content bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }

  void removedNote() {
    SnackBar(
        duration: const Duration(seconds: 5),
        content: const Text('Note Deleted'),
        action: SnackBarAction(label: 'Undo', onPressed: () {}));
  }
}
