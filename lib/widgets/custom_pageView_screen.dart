import 'package:flutter/material.dart';

class CustomPageViewScreen extends StatelessWidget {
  final String image1;
  final String image2;
  final String name;
  final  String title;


  const CustomPageViewScreen({super.key,required this.title,required this.name,required this.image2,required this.image1});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset("$image1",
      width: 80,
      height: 80,
      ),
      SizedBox(height: 10,),
      Image.asset("$image2",
      ),
      SizedBox(height: 20,),
       Text(name,style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),),
       SizedBox(height: 20,),

       Text("$title",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),

    ],);
  }
}
