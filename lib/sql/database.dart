import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tasktest/model/login.dart';

class Databasesql {
  static final Databasesql instance = Databasesql._init();

  //static final Databasesql db = Databasesql._init();
  static Database? _db;

  Databasesql._init();

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await initDB();
    return _db!;
  }

  Future<dynamic> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "login.db");
    print(path);
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE DataUser (username TEXT NOT NULL, password TEXT NOT NULL)');
    });
  }

  insert(DataUser login) async {
    final db = await instance.db;
    var res = await db.insert("DataUser", login.toMap());
    print(res);
    return res;
  }

  //criar nova nota
  // save(DataUser login) async {
  //   final db = await instance.db;
  //   var id = await db.rawInsert(
  //       "INSERT INTO DataUser (username, password)"
  //           "VALUES (${login.username},${login.password})");
  //   print(id);
  //   return id;
  // }
  getAllClients() async {
    final db = await instance.db;
    var res = await db.query("DataUser");
    List<DataUser> list =
        res.isNotEmpty ? res.map((c) => DataUser.fromMap(c)).toList() : [];
    print(res);
    return list;
  }
}
