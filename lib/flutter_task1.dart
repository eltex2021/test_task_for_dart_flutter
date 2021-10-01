import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import 'main.dart';


class Task1 extends StatelessWidget {
  List<int> list = [5, 11, 42, 377, 48, 59, 60, 79, 85, 6399];

  @override
  Widget build(BuildContext context) {
    print(list.length);
    return Scaffold(
      appBar: AppBar(title: Text("Задача 1 по Flutter (1 балл)")),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemCount: list.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 40,
              width: 200,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text("$index"),
            );
          }),
    );
  }
}
