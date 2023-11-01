import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      // obscureData.toggle();
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
                  Get.toNamed('/getx-controller');
                },
                child: const Text('Pesquisar Endereço')),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
