import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Widget")),
      body: Column(
        children: const [
          TitleTextWidget(name: "Vahan"),
          TitleTextWidget(name: "Dag"),
          _CustomContainer()
        ],
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data", style: Theme.of(context).textTheme.headline3,),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red)
  );}
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({ Key? key, required this.name }) : super(key: key);
  final String name;  // soru işareti null değer gelebilir anlamı taşıyor.
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}