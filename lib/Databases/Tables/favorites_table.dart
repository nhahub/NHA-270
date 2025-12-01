class FavoritesTable {
  static const String tableName = "favorites";

  static const String createTable = '''
  CREATE TABLE $tableName(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userEmail TEXT NOT NULL,
    designImage TEXT NOT NULL,
    createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userEmail) REFERENCES users(email),
    FOREIGN KEY (designImage) REFERENCES designs(image),
    UNIQUE(userEmail, designImage)
  )
  ''';
}
