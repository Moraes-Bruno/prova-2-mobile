import 'package:flutter/material.dart';
import '../models/hardware.dart';

// ignore: must_be_immutable
class HardwareTile extends StatelessWidget {
  Hardware hardware;
  void Function()? onTap;
  HardwareTile({super.key, required this.hardware,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //imagem
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(hardware.imagem)),
              //descricao
              Text(
                hardware.descricao,
              ),
              //preco + detalhes
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          hardware.nome,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          hardware.preco,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
