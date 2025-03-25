import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CART"),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            child: Text("hi"),
          ),
          Container(
            height: 50,
            child: Text("hello"),
          )
        ],
      ),
    );
  }
}