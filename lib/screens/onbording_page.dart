import 'package:flutter/material.dart';
import 'package:introdaction_page/screens/first_screen.dart';
import 'package:introdaction_page/screens/second_screen.dart';

import '../widgets/custom_bottom_screen.dart';

class OnbordingPage extends StatefulWidget {

  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
    PageController myController=PageController() ;
    bool isLastScreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [ PageView(
            controller: myController,
            children: [FirstScreen(),SecondScreen()],
            onPageChanged: (page){
              setState(() {
                isLastScreen=(page==1);
              });
            },
          ),
          
           CustomBottomScreen(controller:  myController,isLastScreen: isLastScreen,),
          ],
        ),
      ),

    );
  }
}
