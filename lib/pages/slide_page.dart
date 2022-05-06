import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  static const String id = "slide_page";

  const SlidePage({Key? key}) : super(key: key);

  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset>  _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.8,0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Slide"),
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0,),
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
