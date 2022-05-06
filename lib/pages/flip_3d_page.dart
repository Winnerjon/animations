import 'package:flutter/material.dart';

class Flip3DPage extends StatefulWidget {
  static const String id = "flip_3d_page";

  const Flip3DPage({Key? key}) : super(key: key);

  @override
  _Flip3DPageState createState() => _Flip3DPageState();
}

class _Flip3DPageState extends State<Flip3DPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 1.0, end: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        _controller == status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("3D Flip"),
      ),
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateX(3.14 * (_animation.value)),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Icon(
              Icons.accessibility,
              color: Colors.white,
              size: 50,
            ),
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
