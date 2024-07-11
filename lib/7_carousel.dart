
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatefulWidget {
  const CarouselDemo({super.key});

  @override
  State<CarouselDemo> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {

  final carouselImages = <String>[
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWV8tEVfXWu2xGTUNS9DxcxoeqZ5W2F7jpIGrsbJXoYiawMeXowKltWyyQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVcJmxS7KHC25bU3P1VNzIUgHLK5nRaryPjTnPibmahpzP95u2jWaPGdQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVOyIUQL0LQNCDS8ZiaSVza9lXWeorZBDBU2sgL1UPzVqDX2Rj0IRc60A/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVkhS5gOqpFxFnSw6WIecwUoEzIo7qCKDia7awR8L002cDeRBfAJibrgicQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVRu19TqVLklHzVz0N4EwceTnrxrHwVqJicv0on4sGFuRyibIwHcrtC7tA/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVOrmb7gU85b50h3spFpJabk9ZQEeAqwzPXOCrtRUTrUuabj8U29sRJQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVbUuaeZIM6NeuTA7EXqdX8gP7cFENtXIhTM76HJzD9Jasf1Eic0NBuEA/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
    "https://mmbiz.qpic.cn/sz_mmbiz_jpg/E8ZeDZImbONPS2qkLyI3u9zsHIV0PyWVcBBshosQXxuzRFpfiaic6gjibX0mnE5CZwceZxSgMgFYzpzGFOnIGRQmg/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1",
  ];

  int _currentCarouselIndex = 0;
  int get currentCarouselIndex => _currentCarouselIndex;

  updateCurrentCarouselIndex(int index){
   setState(() {
     _currentCarouselIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("carousel demo"),),
      body: Stack(
          children: [
            _carouselContent(context),
            _carouselInstruction(context),
          ],
        ),
    );
  }

  Widget _carouselContent(BuildContext context,){
    final lightGrayColor = Color(0xffa0a0a0);
    return CarouselSlider(
      items: carouselImages.map((imageUrl){
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: lightGrayColor),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image(image: NetworkImage(imageUrl), fit: BoxFit.fitHeight,),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 600.0,
        // initialPage: currentCarouselIndex,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          updateCurrentCarouselIndex(index);
        },
        // autoPlay: true,
      ),
    );
  }

  _carouselInstruction(BuildContext context){
    final carouselImage = carouselImages[currentCarouselIndex];
    return _bottomInstruction(child: Row(
      children: [
        Expanded(child: Text("name ${currentCarouselIndex + 1}", style: TextStyle(color: Colors.white, fontSize: 12),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carouselImages.map((url) {
            int index = carouselImages.indexOf(url);
            return Container(
              width: 5.0,
              height: 5.0,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentCarouselIndex == index ? Colors.white : Colors.grey,
              ),
            );
          }).toList(),
        )
      ],
    ));
  }

  _bottomInstruction({required Widget child}){
    return  Positioned(bottom: 0,left: 0,right: 0, child: Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5), borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: child,
    ),);
  }
}


