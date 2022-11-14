import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  Database? myDataBase;

  static final DBAdmin db = DBAdmin._();
  DBAdmin._();

  Future<Database?> chekDatabase() async {
    if (myDataBase != null) {
      return myDataBase;
    }

    myDataBase = await initDatabase();
    return myDataBase;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Alumnos.db");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database dbx, int version) async {
        await dbx.execute(
            "CREATE TABLE Alumno(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, apellido TEXT, curso TEXT)");
      },
    );
  }
}
