import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart' as material;
import 'package:movie_app/shared_preferences/example_drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart'as p;
import 'package:drift/native.dart';
import 'example_drift.dart';


part 'example_drift.g.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 8, max: 32)();

  TextColumn get content => text().nullable()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));


    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.

    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.


    return NativeDatabase.createInBackground(file);
  });
}
class TodoCategory extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get description => text()();
}

@DriftDatabase(tables: [TodoItems, TodoCategory])
class AppDataBase extends _$AppDataBase {
  AppDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;


}


void main() async {
  material.WidgetsFlutterBinding.ensureInitialized();
  final AppDataBase database = AppDataBase();
  await database.into(database.TodoItems).insert(TodoItemsCompanion.insert(
        title: 'TODO:finish drift setup',
        content: 'We can now write queries and define our own tables.',
      ));
  List<TodoItems> allItems = await database.select(database.todoItems).get();

  print('items in database: $allItems');
}
