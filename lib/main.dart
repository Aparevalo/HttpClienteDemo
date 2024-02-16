import 'package:flutter/material.dart';
import 'view.dart';

void main() {
  runApp(HttpClienteDemo());
}

class HttpClienteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HttpClienteDemo',
      home: HttpDemoView(),
    );
  }
}
