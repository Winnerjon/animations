import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_lesson_8/pages/basic_layout_page.dart';
import 'package:modul_4_lesson_8/pages/bounce_page.dart';
import 'package:modul_4_lesson_8/pages/first_task_page.dart';
import 'package:modul_4_lesson_8/pages/flip_3d_page.dart';
import 'package:modul_4_lesson_8/pages/hinge_page.dart';
import 'package:modul_4_lesson_8/pages/resize_pulse_page.dart';
import 'package:modul_4_lesson_8/pages/second_task_page.dart';
import 'package:modul_4_lesson_8/pages/slide_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Basic Layout",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(BasicLoyoutPage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Resize Pulse",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(ResizePulsePage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Slide",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SlidePage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Bounce",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(BouncePage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "3D Flip",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Flip3DPage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Hinge",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HingePage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Firs Task",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(FirstTaskPage.id);
              },
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.blueAccent,
              child: Text(
                "Second Task",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SecondTaskPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
