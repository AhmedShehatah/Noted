import 'package:get/get.dart';
import 'package:logger/web.dart';

import '../data/db/dao/notes_dao.dart';
import '../data/db/setup/db_setup.dart';

class NotesController {
  NotesController(this._dao) {
    _listenToNotes();
  }
  final NotesDao _dao;
  final RxList<NoteData> _notes = <NoteData>[].obs;

  void _listenToNotes() {
    _dao.getNotes().listen((notes) {
      Logger().d(notes);
      _notes.value = notes;
    });
  }

  RxList<NoteData> getAllNotes() => _notes;

  void insertNote({required String title, required String content}) {
    _dao.insertNote(title: title, content: content);
  }

  void deleNote(int id) {
    _dao.deleteNote(id);
  }

  void updateNote(NoteData note) {
    _dao.updateNote(note);
  }
}
