import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{

  late Database _db;

  Future<Database> get db async{
    if(_db == null){
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    String dbPath = join(await getDatabasesPath(), "haykm.db");
    var haykmDb = await openDatabase(dbPath,version: 1, onCreate: createDb);
    return haykmDb;
  }
  void createDb(Database db, int version) async{
    await db.execute("Create table products(id integer primary key, name text, description text. unitPrice)");
  }
}