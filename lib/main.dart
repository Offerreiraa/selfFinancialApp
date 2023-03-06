import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

import 'components/transaction_form.dart';

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

  final _transaction = [
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
        crossAxisAlignment: CrossAxisAlignment.stretch, //Flexbox eixo x
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Gráfico"),
            ),
          ),
          TransactionList(transaction: _transaction),
          TransactionForm(),
        ],
      ),
    );
  }
}
