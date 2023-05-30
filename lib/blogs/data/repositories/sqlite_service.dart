import 'package:flutter/material.dart';
import 'package:personal_finance/blogs/data/models/blog_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteService {
  //initializing the database and the table
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute("""
           CREATE TABLE Blogs(title TEXT PRIMARY KEY ,
           content TEXT NOT NULL , 
           image TEXT NOT NULL 
           )""");
      },
      version: 1,
    );
  }

// in the blog, the return type is future<int> but nothing is being returned
  void createItem(BlogModel blog) async {
    int result = 0;
    final Database db = await initializeDB();
    final id = await db.insert('BlogString', blog.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //get data from a table in sqlite
  Future<List<BlogModel>> getItems() async {
    final db = await initializeDB(); //replaced sqlite.initizateDb()
    final List<Map<String, Object?>> queryResult =
        await db.query('BlogString'); //, orderBy: BlogColumn.createdAt
    return queryResult.map((e) => BlogModel.fromMap(e)).toList();
  }

  // Delete an note by id
  Future<void> deleteItem(String id) async {
    final db = await initializeDB();
    try {
      await db.delete("Notes", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
