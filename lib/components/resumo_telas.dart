import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumo Total'),
      ),
      body: Center(
        child: Text(
          'Aqui será exibido o resumo total das despesas.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
