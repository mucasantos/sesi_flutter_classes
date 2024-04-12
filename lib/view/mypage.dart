import 'package:first_flutter_app/model/pet.dart';
import 'package:first_flutter_app/view/widgets/myrow.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: mypets
              .map((pet) => MyRow(
                    myPet: pet,
                  ))
              .toList()),
    );
  }
}
