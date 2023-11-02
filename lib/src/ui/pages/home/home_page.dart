import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/address_controller.dart';
import 'widgets/cep_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.find<AndressController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca Endereço'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // obscureText: true,
                onChanged: (value) {
                  controller.cepSearch = value;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Digite o CEP',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                   
                },
                child: const Text('Pesquisar Endereço')),
            const SizedBox(height: 20),
            const CepWidget(),
          ],
        ),
      ),
    );
  }
}
