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


  Future<User?> getUserByEmail(String email) async {
    final database = await db;
    final result = await database.query(
      UserTable.tableName,
      where: 'email = ?',
      whereArgs: [email],
      limit: 1,
    );
    if (result.isNotEmpty) {
      return User.fromMap(result.first);
    }
    return null;
  }


  Future<int> updateUser({
    required String email,
    String? name,
    String? profileImage,
  }) async {
    final database = await db;

    final Map<String, dynamic> dataToUpdate = {};
    if (name != null) dataToUpdate['name'] = name;
    if (profileImage != null) {
      dataToUpdate['profileImage'] = profileImage;
    }

    if (dataToUpdate.isEmpty) return 0;

    return await database.update(
      UserTable.tableName,
      dataToUpdate,
      where: 'email = ?',
      whereArgs: [email],
    );
  }


  Future<void> updateUserPassword({
    required String email,
    required String newPassword,
  }) async {
    final database = await db; // حسب اسم getter عندك
    await database.update(
      'users',                       // اسم الجدول عندك
      {'password': newPassword},     // العمود اللي جوه الجدول
      where: 'email = ?',
      whereArgs: [email],
    );
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
