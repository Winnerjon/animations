import 'package:flutter/material.dart';

class BasicLoyoutPage extends StatefulWidget {
  static const String id = "basic_loyout_page";

  const BasicLoyoutPage({Key? key}) : super(key: key);

  @override
  _BasicLoyoutPageState createState() => _BasicLoyoutPageState();
}

class _BasicLoyoutPageState extends State<BasicLoyoutPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1200));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Basic Loyout"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/img_1.png"),
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
