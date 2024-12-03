import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("Log In",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue[900],
                  ),),
                const SizedBox(height: 100,),
                TextFormField(
                  decoration:const InputDecoration(
                    label:Text("user name"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:Colors.blue),
                    ),
                  ),
                ),
               const SizedBox(height: 20,),
                TextFormField(
                  decoration:const InputDecoration(
                    label:Text("password"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("Log in"),
                    style:ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                    )
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
