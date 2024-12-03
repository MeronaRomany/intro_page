import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../screens/login_page.dart';
class CustomBottomScreen extends StatefulWidget {
 final PageController controller;
 final bool isLastScreen;
  const CustomBottomScreen({super.key,required this.controller,required this.isLastScreen});

  @override
  State<CustomBottomScreen> createState() => _CustomBottomScreenState();
}

class _CustomBottomScreenState extends State<CustomBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SmoothPageIndicator(
              controller: widget.controller,  // PageController
              count:  2,
          ),
          SizedBox(height: 30,),
          CircularPercentIndicator(
              radius: 40,
             animation: true,
             animationDuration: 300,
           animateFromLastPercent: true,
             percent: widget.isLastScreen? 1 : 0.5,
            progressColor: Colors.blue[900],
            center: CircleAvatar(
              backgroundColor: Colors.blue[900],
              radius: 30,
              child: IconButton(onPressed: (){
                widget.isLastScreen
                    ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ))
                    : widget.controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
                                 icon: Icon(
                                  widget.isLastScreen?Icons.check:
                                  Icons.keyboard_arrow_right,
                                  size: 30,color: Colors.white,
                                  )),
            ),


          ),
          SizedBox(height: 10,),

          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            },
            child:  Text("skip",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
