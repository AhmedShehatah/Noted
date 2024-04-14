import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});
  static const String routeName = "/notesListpage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            color: Color.fromARGB(212, 248, 245, 75),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "The Title",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Content bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}
