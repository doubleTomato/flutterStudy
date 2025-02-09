import 'package:flutter/material.dart';

class WidgetfullLifesycle extends StatefulWidget {
  const WidgetfullLifesycle({super.key});

  @override
  State<WidgetfullLifesycle> createState() => _WidgetfullLifesycleState();
}

class _WidgetfullLifesycleState extends State<WidgetfullLifesycle> {
  Color color  = Colors.amber;
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isShow) GestureDetector(
              onTap: (){
                setState(() {
                  color = color == Colors.amber ? Colors.lightGreenAccent:Colors.amber;
                  print(color);
                });

              },
                child: CodeFactory(color:color),
            ),
            SizedBox(height: 32,),
            ElevatedButton(onPressed: (){
              setState(() {
                isShow = !isShow;
              });
              print(isShow);
            }, child: Text("보이기"))
          ],
        ),
      )
    );
  }
}


class CodeFactory extends StatefulWidget {
  final Color color;
  const CodeFactory({
    super.key,
    required this.color
  });

  @override
  State<CodeFactory> createState() => _CodeFactoryState();
}

class _CodeFactoryState extends State<CodeFactory> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      height: 50,
      color: widget.color
    );
  }
}
