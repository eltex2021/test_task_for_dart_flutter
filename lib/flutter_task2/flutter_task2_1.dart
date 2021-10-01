import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_for_dart_flutter/flutter_task2/flutter_task2_2.dart';


class Task2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Задача 2 по Flutter (2 балла)")),
        body: Container(
          color: Colors.blue,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Task2_2(),
                        ));
                  },
                  child: Text(
            "На экран 2",
            style: TextStyle(color: Colors.white),
          ))),
        ));
  }
}
