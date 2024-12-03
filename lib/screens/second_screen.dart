import 'package:flutter/material.dart';
import '../widgets/custom_pageView_screen.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: CustomPageViewScreen(
            title: "All what you want is one app",
            name:"welcome to my app",
            image2: "assets/images/undraw_version_control_re_mg66.png",
            image1: "assets/images/cartoon-letter-m-language-QJDZvQ5-600.jpg"),
      ),
    );
  }
}