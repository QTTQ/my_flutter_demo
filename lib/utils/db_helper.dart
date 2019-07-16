// import 'package:sqflite/sqflite.dart';
// import '../model/User.dart';

// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper.internal();
//   factory DatabaseHelper() => _instance;
//   final String tableName = "table_user";
//   final String columnId = "id";
//   final String columnName = "name";
//   final String columnAge = "age";
//   static Database _db;

//   Future<Database> get db async {
//     if (_db != null) {
//       return _db;
//     }
//     _db = await initDb();
//     return _db;
//   }

//   DatabaseHelper.internal();

//   initDb() async {
//     var databasesPath = await getDatabasesPath;
//     String path = join(databasesPath, 'sqflite.db');

//     // String path = databasesPath + 'sqflite.db';

//     var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
//     return ourDb;
//   }

//   //创建数据库表
//   void _onCreate(Database db, int version) async {
//     await db.execute(
//         "create table $tableName($columnId integer primary key,$columnName text not null ,$columnAge integer not null )");
//     print("Table is created");
//   }

// //插入
//   Future<int> saveItem(User user) async {
//     var dbClient = await db;
//     int res = await dbClient.insert("$tableName", user.toMap());
//     print(res.toString());
//     return res;
//   }

//   //查询
//   Future<List> getTotalList() async {
//     var dbClient = await db;
//     var result = await dbClient.rawQuery("SELECT * FROM $tableName ");
//     return result.toList();
//   }

//   //查询总数
//   Future<int> getCount() async {
//     var dbClient = await db;
//     return Sqflite.firstIntValue(
//         await dbClient.rawQuery("SELECT COUNT(*) FROM $tableName"));
//   }

// //按照id查询
//   Future<User> getItem(int id) async {
//     var dbClient = await db;
//     var result =
//         await dbClient.rawQuery("SELECT * FROM $tableName WHERE id = $id");
//     if (result.length == 0) return null;
//     return User.fromMap(result.first);
//   }

//   //清空数据
//   Future<int> clear() async {
//     var dbClient = await db;
//     return await dbClient.delete(tableName);
//   }

//   //根据id删除
//   Future<int> deleteItem(int id) async {
//     var dbClient = await db;
//     return await dbClient
//         .delete(tableName, where: "$columnId = ?", whereArgs: [id]);
//   }

//   //修改
//   Future<int> updateItem(User user) async {
//     var dbClient = await db;
//     return await dbClient.update("$tableName", user.toMap(),
//         where: "$columnId = ?", whereArgs: [user.id]);
//   }

//   //关闭
//   Future close() async {
//     var dbClient = await db;
//     return dbClient.close();
//   }
// }

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import '../model/User.dart';
class DataBase {
  static final DataBase _instance = new DataBase.internal();
  factory DataBase() => _instance;

  static Database _db;

  String _dbName = 'mydb.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DataBase.internal();

  //初始化数据库，根据路径版本号新建数据库
  initDb() async {
    // Directory directory = await getApplicationDocumentsDirectory();
    String p = await getDatabasesPath();
    String path = join(p, _dbName);
    var dataBase = await openDatabase(path, version: 1, onCreate: _onCreate);
    print('数据库创建成功，version： 1');
    return dataBase;
  }

  _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, '
        'name TEXT, '
        'value INTEGER, '
        'num REAL)');
    print("创建表成功！");
  }

  closeDB() {
    if (_db != null || _db.isOpen) {
      _db.close();
      _db = null;
      print("关闭成功！");
    }
  }

  insert() async {
    var dbClient = await db;

    await dbClient.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO Test(name, value, num) VALUES("some name", 1234, 456.789)');
      print('inserted1: $id1');
      int id2 = await txn.rawInsert(
          'INSERT INTO Test(name, value, num) VALUES(?, ?, ?)',
          ['another name', 12345678, 3.1416]);
      print('inserted2: $id2');
    });
  }

  query() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Test');
    return list;
  }
}
