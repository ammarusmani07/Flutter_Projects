import 'dart:io';

import 'package:path/path.dart'; // Add this line
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'package:whatsapp_clone/modelclass.dart';

class DBHelper {
  DBHelper._privateConstructor();
  static final DBHelper instance = DBHelper._privateConstructor();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database>
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "Note.db");
    return openDatabase(path, version: 1, onCreate: _onCreate);
  }

  void _onCreate(Database db, int version) {
    db.execute(
        "CREATE TABLE Note (id INTEGER PRIMARY KEY, title TEXT NOT NULL, message TEXT NOT NULL)");
  }

  // Inserting function
  Future<void> create(Note note) async {
    var noteJson = {
      'id': note.id,
      'title': note.title,
      'message': note.message,
    };

    var db = await instance.database;
    int? id = await db?.insert('Note', noteJson);
    if (id == null)
      print('Data did not save...');
    else
      print('Data saved successfully...');
  }

  // Reading function
  Future<List<Map<String, dynamic>>?> read() async {
    var db = await instance.database;
    return db?.query('Note');
  }

  // Updating function
  Future<void> update(int id, Note note) async {
    var noteJson = {
      'id': note.id,
      'title': note.title,
      'message': note.message,
    };

    var db = await instance.database;
    await db?.update('Note', noteJson, where: 'id = ?', whereArgs: [id]);
  }

  // Deleting function
  Future<void> delete(int id) async {
    var db = await instance.database;
    await db?.delete('Note', where: 'id = ?', whereArgs: [id]);
  }
}
