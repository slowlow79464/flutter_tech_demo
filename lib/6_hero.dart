
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hero demo"),),
      body: Center(
        child: GestureDetector(
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>HeroDetail())),
          child: Hero(
            tag: "hero",
            child: Image.network("https://food.bolt.eu/images/hero-image.jpg", width: 200, ),
          ),
        ),
      ),
    );
  }
}


class HeroDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: ()=>Navigator.of(context).pop(),
        child: Hero(
          tag: "hero",
          child: Image.network("https://food.bolt.eu/images/hero-image.jpg"),
        ),
      ),
    );
  }
}