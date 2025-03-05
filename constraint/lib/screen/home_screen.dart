import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blueAccent,
          child:Center(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red
                    ),
          )
        ),
      ),
    );
  }
}
