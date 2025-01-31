import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
final homeUrl = Uri.parse('https://blog.codefactory.ai');


class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..loadRequest(homeUrl);// (..) 함수의 결과가 반환되는 것이 아닌 위의 WebViewController를 반환하라
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DoubleTomato", style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: WebViewWidget(
        controller: controller,
      )
    );
  }
}
