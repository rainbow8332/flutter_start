import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_app/student.dart';

class DatabaseHandler{
  // Dao와 비슷 
  // insert,update 문장 등등..

  Future<Database> initializeDB()async{
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'student.db'),
      onCreate: (database, version) async{
        await database.execute(
          'create table students(id integer primary key autoincrement,code text, name text, dept text, phone text)');
      },
      version: 1,
      
    );

  }

  Future<int> insertStudents(Students student)async{
    int result = 0;
    final Database db = await initializeDB();
    result = await db.rawInsert(
      'insert into students(code,name,dept,phone) values(?,?,?,?)',
      [student.code, student.name, student.dept,student.phone]);

    return result;

  }

  Future<List<Students>> queryStudents() async{
    final Database db = await initializeDB();
    final List<Map<String,Object?>> queryResult = await db.rawQuery('select * from students');
    return queryResult.map((e) => Students.fromMap(e)).toList();
  } 


}