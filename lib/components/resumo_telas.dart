import 'package:flutter/material.dart';
import '../models/transaction.dart';

class SummaryScreen extends StatelessWidget {
  final List<Transaction> transactions;

  const SummaryScreen(this.transactions, {Key? key}) : super(key: key);

  double get totalExpenses => _calculateTotalExpenses(transactions);

  double _calculateTotalExpenses(List<Transaction> transactions) {
    double total = 0.0;
    for (var transaction in transactions) {
      total += transaction.value;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo Total'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Total de Despesas:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'R\$ ${totalExpenses.toStringAsFixed(2)}', // Formata para duas casas decimais
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
