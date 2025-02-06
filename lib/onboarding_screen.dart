import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spendly/intro_screens/intro_page_1.dart';
import 'package:spendly/intro_screens/intro_page_2.dart';
import 'package:spendly/intro_screens/intro_page_3.dart';
import 'package:spendly/screens/home/views/home_screen.dart';
import 'package:spendly/sign%20in/login_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of which page we're on
  final PageController _controller = PageController();

  //keep track of if we are on the last page or not
  // ignore: non_constant_identifier_names
  bool OnLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //page view
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  OnLastPage = (index == 2);
                });

              },
              children: const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ],
            ),
            //dot indicator
            Container(
                alignment: const Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //skip button
                    GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },

                        child: const Text('Skip',style:TextStyle(fontFamily: 'AbrilFatface',fontSize: 20,fontWeight: FontWeight.bold),)),

                    //dot indicator
                    SmoothPageIndicator(controller: _controller, count: 3),
                    //next or done
                    OnLastPage ?
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return  LoginPage();
                          }),
                        );
                      },

                      child: const Text('Done',
                        style:TextStyle(fontFamily: 'AbrilFatface',fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    )
                        : GestureDetector(
                      onTap: () {
                        _controller.nextPage(duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Next',style:TextStyle(fontFamily: 'AbrilFatface',
                        fontSize: 20,fontWeight: FontWeight.bold),),)
                  ],
                ))
          ],
        )
    );
  }
}