import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo> with SingleTickerProviderStateMixin{
  bool isChanged = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    void trigger(){
      setState(() {
        isChanged = !isChanged;
        isChanged ? controller.forward() : controller.reverse();
      });
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Container(
            width: 250,
            child: IconButton (
                iconSize: 150,
                onPressed: trigger,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.menu_home,
                  color: Colors.orangeAccent,
                  progress: controller,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
