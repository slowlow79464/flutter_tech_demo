import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("google fonts & selectable text")),
      body: Center(
      child: IntrinsicHeight(
        child: Column(
          children: [
            Text("normal text 展示"),
            SelectableText(
              "google fonts 展示",
              style: GoogleFonts.fontdinerSwanky(
                textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}