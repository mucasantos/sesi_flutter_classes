import 'package:first_flutter_app/model/pet.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  MyRow({
    super.key,
    required this.myPet,
  });

  //Receber o nome e a imagem ou receber um PET!!

  Pet myPet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.blueAccent,
      child: Column(
        children: [
          Expanded(
            child: Image.network(myPet.image!),
          ),
          Text(myPet.name!)
        ],
      ),
    );
  }
}
