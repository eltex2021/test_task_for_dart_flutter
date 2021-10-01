import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_for_dart_flutter/flutter_task2/flutter_task2_1.dart';


class Task2_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Задача 2 по Flutter (2 балла)"), backgroundColor: Colors.green,),
        body: Container(
            color: Colors.green,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Task2_1(),
                        ));
                  },
                  child: Text(
                  "На экран 1",
                  style: TextStyle(color: Colors.white),
            ))),)
    );
  }
}
