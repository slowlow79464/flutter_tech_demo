import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("rich text demo"),),
       body: Center(child: _content(),),
     );
  }

  Widget _content(){
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: "这是一个"),
          TextSpan(
              text: "Flutter",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)
          ),
          TextSpan(text: "的"),
          TextSpan(
              text: "富文本",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)
          ),
          TextSpan(text: "示例"),
        ]
      ),

    );
  }

}