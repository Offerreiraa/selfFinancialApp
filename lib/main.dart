import 'package:expenses/components/transaction_list.dart';
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

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration:
                        const InputDecoration(labelText: "Título da conta"),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: const InputDecoration(labelText: "Valor (R\$)"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.purple),
                        onPressed: () {
                          print(titleController.text);
                          print(valueController.text);
                        },
                        child: const Text("Nova Transação"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
