import 'package:flutter/material.dart';
import 'package:myfirstflutter/const/colors.dart';
class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment :MainAxisAlignment.spaceEvenly,
          children:[
            Container(
              height: 150,
              child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: colors.map((v) => Container(width: 50, height: 50, color:v)).toList(),
              ),
            ),
          ),
          Container(height: 50, width: 50, color: Colors.orange),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: colors.map((x) => Container(width: 50, height: 50, color:x)).toList(),
              )
            ),
            Container(height: 50, width: 50, color: Colors.green),
          ]
        ),
      )
    );
  }
}
