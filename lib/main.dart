import 'package:flutter/material.dart';
import 'package:flutter_tech_demo/2_rich_text.dart';
import 'package:flutter_tech_demo/3_fitted_box.dart';
import 'package:flutter_tech_demo/4_snackbar.dart';
import 'package:flutter_tech_demo/5_google_fonts.dart';
import 'package:flutter_tech_demo/6_hero.dart';
import 'package:flutter_tech_demo/7_carousel.dart';
import '1_introduction_screen.dart';
import 'animation/animation_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tech Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("选择示例"),),
      body: ListView(
        children: [
          _buildButton(context, name: "动画示例", widgetBuilder: (ctx)=> AnimationDemos()),
          const Divider(),
          _buildButton(context, name: "1 IntroductionScreen", widgetBuilder: (ctx)=> IntroductionScreenDemo()),
          const Divider(),
          _buildButton(context, name: "2 RichText", widgetBuilder: (ctx)=> RichTextDemo()),
          const Divider(),
          _buildButton(context, name: "3 FittedBox", widgetBuilder: (ctx)=> FittedBoxDemo()),
          const Divider(),
          _buildButton(context, name: "4 SnackBar", widgetBuilder: (ctx)=> SnackBarDemo()),
          const Divider(),
          _buildButton(context, name: "5 GoogleFonts&SelectableText", widgetBuilder: (ctx)=> GoogleFontsDemo()),
          const Divider(),
          _buildButton(context, name: "6 Hero", widgetBuilder: (ctx)=> HeroDemo()),
          const Divider(),
          _buildButton(context, name: "7 Carousel", widgetBuilder: (ctx)=> CarouselDemo()),
          const Divider(),
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
