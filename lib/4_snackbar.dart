import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("snack bar title"),),
      body: Center(
        child: Builder(
          builder: (context)=>GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text("this is the snack bar")
                )
              );
            },
            child: FlutterLogo(size: 100,),
          ),
        ),
      ),
    );
  }
}