import 'package:flutter/material.dart';

class BlockChainDataInstance extends StatelessWidget {
  final item;
  const BlockChainDataInstance({this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(color: Colors.lightGreen, child: Text("Hello"));
  }
}
