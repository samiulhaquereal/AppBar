import 'dart:ui';

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
      home: Appbarr(),
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

class Appbarr extends StatelessWidget {
  const Appbarr({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text('Home',style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white.withAlpha(200),
            centerTitle: true,
            elevation: 0,
            flexibleSpace: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                child: Container(color: Colors.transparent,),
              ),
            ),
          ),
          body: Container(
            child: ListView.builder(
              itemCount: 20,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text('Real - ${index+1}'),
                    subtitle: Text('subtitle : '),
                    leading: CircleAvatar(backgroundColor: Colors.red,),
                  );
                }),
          ),
        ));
  }
}


