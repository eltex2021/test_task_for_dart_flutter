import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_for_dart_flutter/flutter_task2/flutter_task2_2.dart';

class Task3 extends StatefulWidget {
  @override
  _Task3State createState() => _Task3State();
}


class _Task3State extends State<Task3> {
  double _width = 150;
  double _height = 150;
  bool isBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Нажми на квадрат для анимации")),
      body: Container(
          color: Colors.white,
          child: Center(
            child: GestureDetector(
              child: AnimatedContainer(
                //child: Center(child: Text("Нажми на меня", style: TextStyle(color: Colors.white),)),
                duration: Duration(seconds: 2),
                height: _height,
                width: _width,
                color: Colors.red,
              ),
              onTap: () {
                setState(() {
                  isBool = !isBool;
                  if (isBool == true) {
                    _width = 300;
                    _height = 300;
                  } else {
                    _width = 150;
                    _height = 150;
                  }
                });
              },
            ),
          )),
    );
  }
}
