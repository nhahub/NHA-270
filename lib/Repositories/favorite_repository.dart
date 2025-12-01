import 'package:sqflite/sqflite.dart';
import '../Databases/app_database.dart';
import '../Databases/Tables/favorites_table.dart';
import '../Databases/Tables/designs_table.dart';
import '../Models/designs.dart';

class FavoriteRepository {
  Future<Database> get db async => AppDatabase.database;

  Future<void> addFavorite(String userEmail, String designImage) async {
    final database = await db;
    await database.insert(
      FavoritesTable.tableName,
      {
        'userEmail': userEmail,
        'designImage': designImage,
      },
      conflictAlgorithm: ConflictAlgorithm.ignore, // متضيفيش نفس الحاجة مرتين
    );
  }

  Future<void> removeFavorite(String userEmail, String designImage) async {
    final database = await db;
    await database.delete(
      FavoritesTable.tableName,
      where: 'userEmail = ? AND designImage = ?',
      whereArgs: [userEmail, designImage],
    );
  }
//لما ييجي يعرض ال design details
  Future<bool> isFavorite(String userEmail, String designImage) async {
    final database = await db;
    final res = await database.query(
      FavoritesTable.tableName,
      where: 'userEmail = ? AND designImage = ?',
      whereArgs: [userEmail, designImage],
      limit: 1,
    );
    return res.isNotEmpty;
  }

  /// دي اللي هنستخدمها في شاشة Favorites
  Future<List<Design>> getFavoritesForUser(String userEmail) async {
    final database = await db;

    final result = await database.rawQuery('''
      SELECT DISTINCT d.*
      FROM ${DesignTable.tableName} d
      INNER JOIN ${FavoritesTable.tableName} f
        ON f.designImage = d.image
      WHERE f.userEmail = ?
      ORDER BY f.createdAt DESC
    ''', [userEmail]);
    final raw = await database.query('favorites');
    print(raw);

    return result.map((e) => Design.fromMap(e)).toList();

  }
}
