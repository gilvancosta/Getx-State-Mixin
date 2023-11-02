// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../domain/Entities/cep/address_entity.dart';

class AddressWidget extends StatelessWidget {
  final AddressEntity? adrress;

  const AddressWidget({
    Key? key,
    this.adrress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('CEP: ${adrress?.cep ?? ''}'),
        const SizedBox(height: 20),
        Text('Rua: ${adrress?.logradouro ?? ''}'),
        const SizedBox(height: 20),
        Text('Bairro: ${adrress?.bairro ?? ''}'),
        const SizedBox(height: 20),
        Text('Cidade: ${adrress?.localidade ?? ''}'),
        const SizedBox(height: 20),
        Text('UF: ${adrress?.uf ?? ''}'),
        const SizedBox(height: 20),
      ],
    );
  }
}
