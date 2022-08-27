import 'package:flutter/material.dart';

import 'native/api.dart';

void main() {
  api.checksum(a: 1, b: 53).then((v) => print(v));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
