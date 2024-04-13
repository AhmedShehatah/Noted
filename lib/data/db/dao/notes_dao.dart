import 'package:drift/drift.dart';

import '../../models/note.dart';
import '../setup/db_setup.dart';

part 'notes_dao.g.dart';

@DriftAccessor(tables: [Note])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {
  NotesDao(super.database);

  Stream<List<NoteData>> getNotes() {
    return select(note).watch();
  }

  Future<int> deleteNote(int id) {
    return (delete(note)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<bool> updateNote(NoteData data) {
    return (update(note).replace(data));
  }

  Future<int> insertNote({required String title, required String content}) {
    return into(note)
        .insert(NoteCompanion.insert(title: title, content: content));
  }
}
