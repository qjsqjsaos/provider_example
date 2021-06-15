import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/home.dart';
import 'package:provider_example/src/provider/count_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => CountProvider() ,
        child: Home(),
      ),

    );
  }
}