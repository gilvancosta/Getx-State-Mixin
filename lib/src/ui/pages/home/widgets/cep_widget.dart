import 'package:flutter/material.dart';

class CepWidget extends StatelessWidget {
  const CepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('CEP: 00000-000'),
        SizedBox(height: 20),
        Text('Rua Exemplo, 123'),
        SizedBox(height: 20),
        Text('Bairro: Cidade Exemplo'),
        SizedBox(height: 20),
        Text('Cidade: Cidade Exemplo'),
        SizedBox(height: 20),
        Text('UF: UF Exemplo'),
        SizedBox(height: 20),
      ],
    );
  }
}
