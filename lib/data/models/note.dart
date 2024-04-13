import 'package:drift/drift.dart';

class Note extends Table {
  IntColumn get id => integer().autoIncrement().unique()();
  TextColumn get title => text()();
  TextColumn get content => text()();
}
