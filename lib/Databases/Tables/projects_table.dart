class SavedProjectsTable {
  static const String tableName = "saved_projects";

  static const String createTable = '''
  CREATE TABLE $tableName(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userEmail TEXT NOT NULL,
    title TEXT NOT NULL,
    image TEXT NOT NULL,
    createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userEmail) REFERENCES users(email)
  )
  ''';
}
