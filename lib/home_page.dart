import 'package:dot_indicators/pages/page_1.dart';
import 'package:dot_indicators/pages/page_2.dart';
import 'package:dot_indicators/pages/page_3.dart';
import 'package:dot_indicators/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final  _controller = PageController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                page1(),
                page2(),
                page3(),
                page4(),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _controller, 
            count: 4,

            //effect type 1 -expanding dots effect

            // effect: ExpandingDotsEffect(
            //   activeDotColor: Colors.yellow,
            //   dotColor: Colors.yellowAccent.shade100,
            //   dotHeight: 30,
            //   dotWidth: 30,
            //   spacing: 16,
              
            //   ),

            //effect - 2 - swap effect

            // effect: SwapEffect(
            //   activeDotColor: Colors.yellow,
            //   dotColor: Colors.yellowAccent.shade100,
            //   dotHeight: 30,
            //   dotWidth: 30,
            //   spacing: 16,
              
            //   ),

            //effect -3 - jumping dot effect
            effect: JumpingDotEffect(
              activeDotColor: Colors.yellow,
              dotColor: Colors.yellowAccent.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              // more jumpy effect
              verticalOffset: 50,

              //more fun iwth jumping
              //jumpScale: 10,
              
              ),
            
            ),
        ]),
    );
  }
}
