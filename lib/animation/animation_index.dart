import 'package:flutter/material.dart';
import 'package:flutter_tech_demo/animation/2_animated_container.dart';
import '1_animated_icon.dart';

class AnimationDemos extends StatelessWidget {
  const AnimationDemos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("动画示例"),),
      body: ListView(
        children: [
          const Divider(),
          _buildButton(context, name: "1 AnimatedIcon", widgetBuilder: (ctx)=> AnimatedIconDemo()),
          const Divider(),
          _buildButton(context, name: "1 AnimatedContainer", widgetBuilder: (ctx)=> AnimatedContainerDemo()),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, {required String name, required Widget Function(BuildContext context) widgetBuilder}){
    return InkWell(
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(10),
        child: Text(name, style: TextStyle(color: Colors.white),),
      ),
      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: widgetBuilder)),
    );
  }
}