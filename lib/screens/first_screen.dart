import 'package:flutter/material.dart';

import '../widgets/custom_pageView_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
          child:  CustomPageViewScreen(
              title: "I am Flutter developer",
              name: "@Merona",
              image2: "assets/images/undraw_Mobile_development_re_wwsn.png",
              image1: "assets/images/cartoon-letter-m-language-QJDZvQ5-600.jpg"),
        ),
    );
  }
}
