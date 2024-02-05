import 'package:flutter/material.dart';
import 'package:flutter_lessons/pages/first_lesson.dart';
import 'package:flutter_lessons/pages/scnd_lesson.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondLessonPage(),
    );
  }
}

