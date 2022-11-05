import 'package:flutter/material.dart';

class CardsLearn extends StatelessWidget {
  const CardsLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text("Vahan", style: TextStyle(color: Colors.black),)),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Card(
            color: Colors.red,
            child: SizedBox(
              width: 200,
              height: 100,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ) ,
    );
  }
}