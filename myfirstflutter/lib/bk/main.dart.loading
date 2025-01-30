import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  )
  );
}
// StatelessWidget
class HomeScreen extends StatelessWidget{
  //여러개의 위젯을 하나의 위젯으로 묶는 형식
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //66, 172, 237
        backgroundColor: Color(0xff42aced),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset('asset/images/titlelogo.png'),
                SizedBox(height: 30,),//띄어서 보기
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ]),
        )
    );
  }
}

