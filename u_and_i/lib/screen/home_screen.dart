import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body:SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "U&I",
                        style: TextStyle(
                          color:Colors.white,
                          fontFamily: 'estable',
                          fontSize: 50
                        ),
                      ),
                      Text(
                          "우리 처음 만난 날",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'batang',
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "2023.11.23",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'batang',
                            fontSize: 25
                        ),
                      ),
                      IconButton(
                        iconSize: 60,
                        color: Colors.red,
                        onPressed: (){},
                        icon: Icon(Icons.favorite),
                      ),
                      Text(
                          "D+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'batang',
                          fontWeight: FontWeight.w700,
                          fontSize: 30
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child:Image.asset(
                      'asset/img/backimg.png'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}