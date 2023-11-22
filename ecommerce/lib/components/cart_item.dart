import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/hardware.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Hardware hardware;
  CartItem({super.key, required this.hardware});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).remove(widget.hardware);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.hardware.imagem),
        title: Text(widget.hardware.nome),
        subtitle: Text(widget.hardware.preco),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeFromCart,
        ),
      ),
    );
  }
}
