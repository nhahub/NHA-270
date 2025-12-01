import 'package:sqflite/sqflite.dart';
import '../Databases/app_database.dart';
import '../Databases/Tables/user_table.dart';
import '../Models/user.dart';

class UserRepository {
  Future<Database> get db async => await AppDatabase.database;

  Future<int> insertUser(User user) async {
    final database = await db;
    return await database.insert(
      UserTable.tableName,
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort, // متسمحش بإيميل مكرر
    );
  }

  Future<User?> getUserByEmailAndPassword(String email, String password) async {
    final database = await db;
    final result = await database.query(
      UserTable.tableName,
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (result.isNotEmpty) {
      return User.fromMap(result.first);
    }
    return null;
  }

  Future<bool> emailExists(String email) async {
    final database = await db;
    final result = await database.query(
      UserTable.tableName,
      where: 'email = ?',
      whereArgs: [email],
      limit: 1,
    );
    return result.isNotEmpty;
  }
}

// Future <String> getUserNameByEmail(String email) async {
//   final database = await AppDatabase.database;
//   final result = await database.query(
//     UserTable.tableName,
//       where:'email = ?',
//       whereArgs: [email],
//       limit: 1,
//   );
//   return result.first['name'].toString();
// }
