import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionState();
}

class _TransactionState extends State<TransactionUser> {
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

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transaction: _transaction),
        TransactionForm(_addTransaction),
      ],
    );
  }
}