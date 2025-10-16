import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _db;
  static const String dbName = 'shop.db';
  static const int dbVersion = 1;

  static const String categoryTable = 'categories';
  static const String productTable = 'products';

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(
      path,
      version: dbVersion,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $categoryTable (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            image TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE $productTable (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            price REAL NOT NULL,
            image TEXT
          )
        ''');
      },
    );
  }

  static Future<int> insertCategory(Map<String, dynamic> category) async {
    final db = await database;
    return await db.insert(categoryTable, category);
  }

  static Future<List<Map<String, dynamic>>> getAllCategories() async {
    final db = await database;
    return await db.query(categoryTable);
  }


  static Future<int> insertProduct(Map<String, dynamic> product) async {
    final db = await database;
    return await db.insert(productTable, product);
  }

  static Future<List<Map<String, dynamic>>> getAllProducts() async {
    final db = await database;
    return await db.query(productTable);
  }
}
