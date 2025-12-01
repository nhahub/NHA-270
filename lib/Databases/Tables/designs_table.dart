class DesignTable {
  static const String tableName = "designs";

  static const String createTable = '''
  CREATE TABLE $tableName(
    image TEXT NOT NULL,
    description TEXT NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
  )
  ''';
}
