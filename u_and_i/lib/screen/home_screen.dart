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
              _Top(),
              _Bottom()
            ],
          ),
        ),
      ),
    );
  }
}
// 내부에서만 쓴다고 표기 _
class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              "너랑 나랑",
              style: textTheme.displayLarge,
            ),
            Text(
              "우리 처음 만난 날",
              style: textTheme.displayMedium,
            ),
            Text(
              "2023.11.23",
              style: textTheme.bodyMedium,
            ),
            IconButton(
              iconSize: 70,
              color: Colors.red,
              onPressed: (){},
              icon: Icon(Icons.favorite),
            ),
            Text(
              "D+1",
              style: textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Container(
        child:Image.asset(
            'asset/img/backimg.png'
        ),
      ),
    );
  }
}
