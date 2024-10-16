import 'package:sqflite/sqflite.dart';

class EcommerceDatabase {
  static Database? _database;

  static final EcommerceDatabase instance = EcommerceDatabase._init();

  EcommerceDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    // Initialize the database if it's not already
    _database = await openDatabase(
      'ecommerce.db',
      version: 1,
      onCreate: _onCreate,
    );
    return _database!;
  }

  // Create the Tune table with additional fields
  Future<void> _onCreate(Database db, int version) async {
    // create table authentication
    await db.execute("""
      CREATE TABLE Authentication (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    """);
  }
  // insert into table authentication
  Future<void> insertNameAuthentication(String name) async {
    final db = await database; // Ensure database is initialized
    await db.insert(
      'Authentication',
      {'name' : name}, // Handles duplicates
    );
  }

  Future<List<Map>> getAuthenticationName()async{
    final db = await database;
    List<Map> names = await db.query('Authentication');
    return names;
  }

  // Close the database
  Future<void> close() async {
    final db = await database;
    db.close();
  }
}
