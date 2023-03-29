import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo>{
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    double height = pressed ? 150 : 250;
    Color color = pressed ? Colors.orangeAccent : Colors.blue;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: InkWell(
            onTap: (){
              setState(() {
                pressed = !pressed;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: color,
              width: 250,
              height: height,
            ),
          )
        ),
      ),
    );
  }
}
