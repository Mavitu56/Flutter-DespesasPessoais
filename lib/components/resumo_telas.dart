import 'package:flutter/material.dart';
import '../models/transaction.dart';

class SummaryScreen extends StatelessWidget {
  final List<Transaction> transactions;

  SummaryScreen(this.transactions);

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
        title: Text('Resumo Total'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Total de Despesas:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'R\$ ${totalExpenses.toStringAsFixed(2)}', // Formata para duas casas decimais
              style: TextStyle(
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
