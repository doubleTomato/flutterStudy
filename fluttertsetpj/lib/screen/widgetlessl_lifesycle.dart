// statelesswidget lifesycle
// constructor() -> build()
import "package:flutter/material.dart";

class WidgetlessLifeSycle extends StatelessWidget{
  const WidgetlessLifeSycle({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CodeFactoryWidget(),
    );
  }

}

class CodeFactoryWidget extends StatelessWidget {
  CodeFactoryWidget({super.key}){
   print('=====생성자======');

  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}
