import 'package:flutter/material.dart';
import 'package:flutter_sec_11/models/onboardingmodels.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoadingModel> onBoardingList = [
    OnBoadingModel(title: 'First Page', image: 'assets/images/download.jpg'),
    OnBoadingModel(title: 'Second Page', image: 'assets/images/download.jpg'),
    OnBoadingModel(title: 'Third Page', image: 'assets/images/download.jpg'),
    OnBoadingModel(title: 'Fourth Page', image: 'assets/images/download.jpg'),
    OnBoadingModel(title: 'Fifth Page', image: 'assets/images/download.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
                itemCount: onBoardingList.length,
                itemBuilder: (context, i){
                return Column(children: [
                  Image.asset(onBoardingList[i].image.toString()),
                  Text(onBoardingList[i].title.toString(), style: TextStyle(fontSize: 30),),
                ],);
                }),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          )
        ],
      ),


    );
  }
}
