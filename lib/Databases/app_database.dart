import 'package:sqflite/sqflite.dart';

import 'Tables/designs_table.dart';
import 'Tables/favorites_table.dart';
import 'Tables/projects_table.dart';
import 'Tables/user_table.dart';

class AppDatabase {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  static Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = "$dbPath/hues_app.db";

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(UserTable.createTable);
        await db.execute(DesignTable.createTable);
        await db.execute(FavoritesTable.createTable);
        await db.execute(SavedProjectsTable.createTable);
      },
    );
  }
}
