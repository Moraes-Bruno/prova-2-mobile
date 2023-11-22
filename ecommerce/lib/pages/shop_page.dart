import 'package:ecommerce/models/hardware.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/hardware_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Hardware hardware) {
    Provider.of<Cart>(context, listen: false).add(hardware);

    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("Adicionado com sucesso"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Barra de Pesquisa
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pesquisar",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                //Mensagem
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    "Hardware Direto das Fabricantes",
                  ),
                ),

                //Produtos
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Mais Vendidos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Row(
                        children: [
                          Text(
                            "Ver Todos ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.arrow_circle_right_sharp)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          //cria um hardware
                          Hardware hw = value.getHardwareList()[index];
                          return HardwareTile(
                            hardware: hw,
                            onTap: () => addToCart(hw),
                          );
                        }))
              ],
            ));
  }
}
