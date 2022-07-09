import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
      ),
    ];
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(9, (index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Color.fromARGB(255, 48, 146, 226),
                        child: Text(
                          '$index',
                          style: TextStyle(fontSize: 60),
                        ),
                        height: 100,
                        width: 50,
                      );
                    })),
              ),
            )));
  }
}
