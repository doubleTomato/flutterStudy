import 'package:flutter/material.dart';
import 'package:fluttertsetpj/screen/home_screen.dart';//widgetfull 색상변경 테스트용
import 'package:fluttertsetpj/screen/widgetlessl_lifesycle.dart';//statelesswidget lifesycle
import 'package:fluttertsetpj/screen/widgetfull_lifesycle.dart';
void main() {
  runApp(
    MaterialApp(
      home: WidgetfullLifesycle(),
    )
  );
}
