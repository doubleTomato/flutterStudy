import 'package:flutter/material.dart';

void main(){
  //flutter app실행
  runApp(
    //meterailApp은 항상 최상위에 위치한다.
    // scaffold는 바로 아래에 위치한다.
      MaterialApp(
        debugShowCheckedModeBanner: false,//debug 배너 삭제
        home:Scaffold(
          backgroundColor: Colors.black54,
          body: Center(
            child: Text(
                "code Factory",
              style: TextStyle(
                color:Colors.white
              ),
            )
          )
        )
      )
  );
}