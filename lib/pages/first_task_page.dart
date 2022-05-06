import 'package:flutter/material.dart';

class FirstTaskPage extends StatefulWidget {
  static const String id = "first_task_page";

  const FirstTaskPage({Key? key}) : super(key: key);

  @override
  _FirstTaskPageState createState() => _FirstTaskPageState();
}

class _FirstTaskPageState extends State<FirstTaskPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation = Tween<double>(begin: 100.0, end: 200.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticIn))
      ..addStatusListener((AnimationStatus status) {
        if(status == AnimationStatus.completed){
          _controller.repeat(reverse: true);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First Task"),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (ctx,ch)=>Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(top: _animation.value,left: 125),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage("assets/images/img_3.png"),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          _controller.forward();
        },
      ),
    );
  }
}
