import 'package:flutter/material.dart';

import 'helper.dart';
import 'model_grocery.dart';

void main() => runApp(SqliteApp());

class SqliteApp extends StatefulWidget {
  const SqliteApp({Key? key}) : super(key: key);

  @override
  _SqliteAppState createState() => _SqliteAppState();
}

class _SqliteAppState extends State<SqliteApp> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SQLite Example')),
        body: Center(
          child: FutureBuilder<List<Grocery>>(
              future: DatabaseHelper.instance.getGroceries(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Grocery>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: Text('Loading...'));
                }
                return snapshot.data!.isEmpty
                    ? const Center(child: Text('No Groceries in List.'))
                    : ListView(
                        children: snapshot.data!.map((grocery) {
                          return Center(
                            child: ListTile(
                              title: Text(grocery.name),
                              onLongPress: () {
                                setState(() {
                                  DatabaseHelper.instance.remove(grocery.id!);
                                });
                              },
                            ),
                          );
                        }).toList(),
                      );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () async {
            await DatabaseHelper.instance.add(
              Grocery(name: textController.text),
            );
            setState(() {
              textController.clear();
            });
          },
        ),
      ),
    );
  }
}
