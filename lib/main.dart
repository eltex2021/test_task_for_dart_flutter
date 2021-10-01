import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_for_dart_flutter/flutter_task1.dart';
import 'package:test_task_for_dart_flutter/flutter_task2/flutter_task2_1.dart';

import 'flutter_task3.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тестовое задание по Flutter Фрифлекс для JHD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Тестовое задание по Flutter Фрифлекс для JHD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Container(
        child: Column(
          children: [
            task1(),
            task2(),
            task3(),
            task4(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }

  Container task1() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(child: Text("Задача 1 по Dart (1 балл)")),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Создать массив из 10 случайных, натуральных чисел. Вывести только те числа, которые делятся на 2",
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
              onPressed: () {
                getNumders();
                setState(() {});
              },
              child: Text("Решение задачи 1")),
          const SizedBox(
            height: 5,
          ),
          Text("Ответ:" + getNumders().toString()),
          const Divider(),
        ],
      ),
    );
  }

  Container task2() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(child: Text("Задача 1 по Flutter (1 балл)")),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Вывести список из 10 элементов. Каждый элемент это текущий индекс списка. "
              "Элементы должны быть разделены виджетов Divider().",
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task1(),
                    ));
              },
              child: Text("Посмотреть реализацию")),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Container task3() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(child: Text("Задача 2 по Flutter (2 балла)")),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Реализовать два экрана, на каждом экране создать в центре текстовую кнопку. "
              "Экран первый – синий бэкграунд, надпись белого цвета."
              "Экран второй – зеленый бэкграунд, надпись белого цвета.",
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task2_1(),
                    ));
              },
              child: Text("Посмотреть реализацию")),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Container task4() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(child: Text("Задача 3 по Flutter (3 балла)")),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Необходимо создать в центре экрана квадрат размером 150х150 пикселей. "
              "Реализовать анимированное увеличение квадрата до 300х300 пикселей",
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task3(),
                    ));
              },
              child: Text("Посмотреть реализацию")),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

getNumders() {
  List<int> numbers = [];
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    int randomNamber = random.nextInt(1000);
    if (randomNamber % 2 == 0) {
      numbers.add(randomNamber);
    }
  }
  print(numbers);
  return numbers;
}

// getInt() {
//
//   print('Введите любое натуральное число');
//   var a = stdin.readByteSync();
//   //int n = int.tryParse(stdin.readLineSync());
//   //stdout.write(onlyNumber.toString());
//   //stdout.write(n);
//   //print(a);
// }
