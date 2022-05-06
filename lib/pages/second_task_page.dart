import 'package:flutter/material.dart';

class SecondTaskPage extends StatefulWidget {
  static const String id = "second_task_page";

  const SecondTaskPage({Key? key}) : super(key: key);

  @override
  _SecondTaskPageState createState() => _SecondTaskPageState();
}

class _SecondTaskPageState extends State<SecondTaskPage>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _animation = Tween<Size>(
      begin: Size(100, 100),
      end: Size(200, 200),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Task"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx, ch) => Container(
            width: _animation.value.width,
            height: _animation.value.height,
            child: Image.asset("assets/images/img_4.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
