import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenDemo extends StatelessWidget{

  IntroductionScreenDemo({super.key});

  // pages: listPagesViewModel,
  final List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "Title of first page",
      body: "description of the page",
      image: const Center(child: FlutterLogo(size: 80,),),
    ),
    PageViewModel(
      title: "Title of second page",
      body: "description of the page",
      image: const Center(child: FlutterLogo(size: 80,),),
      footer: ElevatedButton(
          onPressed: (){
            // on button pressed
          },
          child: const Text("Let's Go !"),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: IntroductionScreen(
      pages: listPagesViewModel,
      showNextButton: false,
      done: const Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onDone: (){
        Navigator.of(context).pop();
      },
    ));
  }

}