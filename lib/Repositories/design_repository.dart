import 'package:sqflite/sqflite.dart';
import '../Databases/Tables/designs_table.dart';
import '../Databases/app_database.dart';
import '../Models/designs.dart';


class DesignRepository {
  Future<Database> get db async => await AppDatabase.database;

  Future<int> insertDesign(Design design) async {
    final database = await db;
    return await database.insert(
      DesignTable.tableName,
      design.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Design>> getAllDesigns() async {
    final database = await db;
    final data = await database.query(DesignTable.tableName);
    return data.map((e) => Design.fromMap(e)).toList();
  }
}
