import 'package:first_app/constants/styles.dart';
import 'package:first_app/models/card_model.dart';
import 'package:first_app/widgets/card_produto.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    CardModelsProduto card = CardModelsProduto(
      imagem: 'https://images.pexels.com/photos/5966630/pexels-photo-5966630.jpeg', 
      titulo: 'Organic Bananas', 
      peso: '2kg', 
      preco: 3.99,

    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha dasboard'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 65,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text("Cotia, São Paulo"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              decoration: textFieldDecoration,
            ),
          ),
          const ContainerPropaganda(),
          const Text("oFERTAS"),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardProduto(card: card,),
              CardProduto(card: card,),
            ],
          ),
          const Text("Mais vendidos"),
          const Text("Cards de frutas "),
        ],
      ),
    );
  }
}
