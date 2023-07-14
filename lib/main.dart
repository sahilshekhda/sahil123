import 'package:flutter/material.dart';
import 'package:sahil/animation.dart';
import 'package:sahil/dialog.dart';
import 'imagepik.dart';
import 'listview.dart';
import 'loveshayri.dart';
import 'mycomponent.dart';
import 'myhomepage.dart';
import 'mytext.dart';

void main ()
{
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
    return MaterialApp(

      routes: {

        'listview':(context) => listview(),
        'shayari':(context) => shayari(),
        'dialog':(context) => dialog(),
        'animation':(context) => animation(),

      },
      home:image(),debugShowCheckedModeBanner: false,
    );
  }
}
