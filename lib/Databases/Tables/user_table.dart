class UserTable {
  static const String tableName = "users";

  static const String createTable = '''
  CREATE TABLE $tableName(
    email TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    password TEXT NOT NULL
  )
  ''';
}
