import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final transaction = [
    Transaction(
      id: "t1",
      title: "Tênis novo",
      value: 350.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Engradado de Monster",
      value: 60.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //Flexbox eixo y
        crossAxisAlignment: CrossAxisAlignment.center, //Flexbox eixo x
        children: const [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Gráfico"),
            ),
          ),
          Card(
            child: Text("Lista de Transações"),
          )
        ],
      ),
    );
  }
}
