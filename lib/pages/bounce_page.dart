import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BouncePage extends StatefulWidget {
  static const String id = "bounce_page";

  const BouncePage({Key? key}) : super(key: key);

  @override
  _BouncePageState createState() => _BouncePageState();
}

class _BouncePageState extends State<BouncePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _animation = Tween<double>(begin: 200.0, end: 120.0).animate(
        CurvedAnimation(parent: _controller,
            curve: Interval(0.0, 1.0, curve: Curves.elasticIn))
    )..addStatusListener((AnimationStatus status) {
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
        title: Text("Bounce"),
      ),
      body: AnimatedBuilder(animation: _animation,
        builder: (ctx,ch)=>Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(top: _animation.value,left: 125),
          child: Image.asset("assets/images/img_2.png"),
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
