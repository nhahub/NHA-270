import 'package:sqflite/sqflite.dart';
import '../Databases/Tables/projects_table.dart';
import '../Databases/app_database.dart';
import '../Models/saved_project.dart';

class SavedProjectRepository {
  Future<Database> get db async => AppDatabase.database;

  Future<int> insertProject(SavedProject project) async {
    final database = await db;
    return await database.insert(
      SavedProjectsTable.tableName,
      project.toMap(),
    );
  }

  Future<List<SavedProject>> getProjectsForUser(String userEmail) async {
    final database = await db;
    final res = await database.query(
      SavedProjectsTable.tableName,
      where: 'userEmail = ?',
      whereArgs: [userEmail],
      orderBy: 'createdAt DESC',
    );
    return res.map((e) => SavedProject.fromMap(e)).toList();
  }

  Future<void> deleteProject(int id) async {
    final database = await db;
    await database.delete(
      SavedProjectsTable.tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
