import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uwulesson/screens/EnteraceScreen.dart';
import 'package:uwulesson/screens/screens_introduction/intro_first_screen.dart';
import 'package:uwulesson/screens/screens_introduction/intro_second_screen.dart';
import 'package:uwulesson/screens/screens_introduction/intro_third_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
          onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
          },
          children: [
            const intro_first_screen(),
            const intro_second_screen(),
            const intro_third_screen(),
          ],
        ),

          // dot indicator
          Container(
              alignment: const Alignment(0,0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // skip
                  GestureDetector(
                      child: const Text('skip'),
                    onTap: (){
                        _controller.jumpToPage(2);
                    },
                  ),

                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    effect: const WormEffect(
                        spacing:  10.0,
                        paintStyle:  PaintingStyle.stroke,
                        strokeWidth:  3,
                        dotColor: Colors.blue,
                        activeDotColor: Colors.blue),
                  ),

                  // next or done

                  onLastPage
                      ? GestureDetector(
                    child: const Text('done'),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                            return EnteraceScreen();
                          }
                          )
                      );
                    },
                  )
                      : GestureDetector(
                    child: const Text('next'),
                    onTap: (){
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn
                      );
                    },
                  )


                ],
              ),
          )
        ]
      ),
    );
  }
}
