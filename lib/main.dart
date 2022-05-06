import 'package:flutter/material.dart';
import 'package:modul_4_lesson_8/pages/basic_layout_page.dart';
import 'package:modul_4_lesson_8/pages/bounce_page.dart';
import 'package:modul_4_lesson_8/pages/first_task_page.dart';
import 'package:modul_4_lesson_8/pages/flip_3d_page.dart';
import 'package:modul_4_lesson_8/pages/hinge_page.dart';
import 'package:modul_4_lesson_8/pages/home_page.dart';
import 'package:modul_4_lesson_8/pages/resize_pulse_page.dart';
import 'package:modul_4_lesson_8/pages/second_task_page.dart';
import 'package:modul_4_lesson_8/pages/slide_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        BasicLoyoutPage.id: (context) => BasicLoyoutPage(),
        ResizePulsePage.id: (context)=> ResizePulsePage(),
        SlidePage.id: (context) => SlidePage(),
        BouncePage.id:(context)=>BouncePage(),
        Flip3DPage.id: (context)=>Flip3DPage(),
        HingePage.id: (context)=>HingePage(),
        FirstTaskPage.id: (context)=>FirstTaskPage(),
        SecondTaskPage.id: (context)=>SecondTaskPage(),
      },
    );
  }
}
