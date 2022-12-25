import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite_crud_app/databaseHelper.dart';
import 'package:sqlite_crud_app/model/grocery.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? selectedId;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textController,
        ),
      ),
      body: FutureBuilder<List<Grocery>>(
          future: DatabaseHelper.instance.getGroceries(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: Text('Loading...'));
            }
            return snapshot.data!.isEmpty
                ? const Center(child: Text('No Groceries in List.'))
                : ListView(
                    children: snapshot.data!.map((grocery) {
                      return Center(
                        child: Card(
                          color: selectedId == grocery.id
                              ? Colors.white70
                              : Colors.white,
                          child: ListTile(
                            title: Text(grocery.name),
                            onTap: () {
                              setState(() {
                                if(selectedId == null){
                                textController.text = grocery.name;
                                selectedId = grocery.id;
                                }else{
                                  textController.text = '';
                                  selectedId = null;
                                }
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                DatabaseHelper.instance.remove(grocery.id!);
                              });
                            },
                          ),
                        ),
                      );
                    }).toList(),
                  );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          selectedId != null
              ? await DatabaseHelper.instance.update(
                  Grocery(id: selectedId, name: textController.text),
                )
              : await DatabaseHelper.instance
                  .add(Grocery(name: textController.text));
          setState(() {
            textController.clear();
          });
        },
      ),
    );
  }
}
