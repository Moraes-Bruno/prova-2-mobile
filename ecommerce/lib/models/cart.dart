import 'package:flutter/widgets.dart';

import 'hardware.dart';

class Cart extends ChangeNotifier {
  List<Hardware> hardwareShop = [
    Hardware(
        nome: "Gabinete Lianli",
        preco: "RS 500,00",
        imagem: "assets/images/lianli_case.jpg",
        descricao: "EATX support"),
    Hardware(
        nome: "Yeston RX6800XT",
        preco: "RS 3000,00",
        imagem: "assets/images/yeston_rx6800xt.jpg",
        descricao: "16gb Vram"),
    Hardware(
        nome: "Cpu cooler Scythe",
        preco: "RS 150,00",
        imagem: "assets/images/cpu_cooler.jpg",
        descricao: "120mm fans"),
    Hardware(
        nome: "Elsa RX580",
        preco: "RS 500,00",
        imagem: "assets/images/elsa_gpu.png",
        descricao: "2048sp")
  ];

  List<Hardware> userCart = [];

  List<Hardware> getHardwareList() {
    return hardwareShop;
  }

  List<Hardware> getUserCart() {
    return userCart;
  }

  void add(Hardware hardware) {
    userCart.add(hardware);
    notifyListeners();
  }

  void remove(Hardware hardware) {
    userCart.remove(hardware);
    notifyListeners();
  }
}
