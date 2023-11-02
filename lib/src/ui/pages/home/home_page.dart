import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'controller/address_super_controller.dart';
import 'widgets/address_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final controller = Get.find<AndressController>();
  //final controller = Get.find<AddressControllerMixin>();
  final controller = Get.find<AddressSuperController>();


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
                initialValue: '59132020',
                // obscureText: true,
                onChanged: (value) {
                  controller.cepSearch = value;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
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
                  controller.findAddress();
                },
                child: const Text('Pesquisar Endereço')),
            const SizedBox(height: 20),

            ElevatedButton(
                onPressed: () {
                  controller.findAddressV2();
                },
                child: const Text('Busca 2')),
            const SizedBox(height: 20),

            Center(
              child: controller.obx(
                (state) => AddressWidget(adrress: state),
                onError: (error) {
                  return const Text('Erro ao buscar endereço');
                },
                onLoading: const CircularProgressIndicator(),
                onEmpty: const Text('Nenhum endereço encontrado'),
              ),

              /*             child: Obx(() {
                if (controller.isLoading) {
                  return const CircularProgressIndicator();
                } else if (controller.isError) {
                  return const Text('Erro ao buscar endereço');
                } else {                
                  return AddressWidget(adrress: controller.address);
                }
              }), */
            ),

            // Obx(() => AddressWidget(adrress: controller.address)),
          ],
        ),
      ),
    );
  }
}
