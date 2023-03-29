import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fitted box demo"),),
      body: _content(),
    );
  }

  Widget _content(){
    return Column(
      children: [
        Divider(),
        Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              "no fitted box",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Divider(),
        Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: FittedBox(
            child: Center(
              child: Text(
                "fitted box",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        )
      ],
    );
  }
}