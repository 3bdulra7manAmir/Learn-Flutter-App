import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        title: "Shadow Company",
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: const ListViewBuilder()
      );
  }
}

const int itemNum = 20;

class ListViewBuilder extends StatelessWidget
{
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(title: const Text("Shadow Company")),
      body: ListView.builder
    (
          itemCount: itemNum,
          itemBuilder: (BuildContext context, int index)
    {
            return ListTile
            (
                title: Text('Item ${(index + 1)}'),
                leading: const Icon(Icons.tab),
                trailing: const Icon(Icons.select_all),
            onTap: ()
    {
      debugPrint('Item ${(index + 1)}} selected');
    },
            );
    },
    )
    );
  }
}
