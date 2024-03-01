import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Click Counter'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      spreadRadius: 2,
                      offset: Offset(5, 5))
                ]),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: Text("Configurações"),
              )
            ],
          ),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: Row(
              children: [
                Icon(Icons.person),
                Text("Contato"),
              ],
            ),
          ),
        ));
  }
}
