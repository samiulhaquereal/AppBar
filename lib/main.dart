import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Myapp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text('Title',style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.share),
              )
            ],
            elevation: 0,
          ),
        ));
  }
}

