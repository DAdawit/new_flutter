import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
  // var test = TestClass(x: 10, y: 20);
  // print(test.x);
  // var newTest = test.copywith(x: 100);
  // print(newTest.x);
  // print(newTest.y);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: AppRoutes.getRoutes(),
    );
  }
}

class TestClass {
  int x;
  int y;

  TestClass({required this.x, required this.y});

  TestClass copywith({int? x, int? y}) {
    return TestClass(x: x ?? this.x, y: y ?? this.y);
  }
}
