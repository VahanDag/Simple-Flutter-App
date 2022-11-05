import 'package:flutter/material.dart';

class PaddingsLearn extends StatelessWidget {
  const PaddingsLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: SetPaddingSize.sizePadding,
        child: Column(
          children: [
            Padding(
              padding: setOnlyPadding.size,
              child: Container(
                color: Colors.white,
                // padding: EdgeInsets.all(40),
                height: 100,),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10) + EdgeInsets.symmetric(horizontal: 20 ),
              child: Container(
                color: Colors.white,
                height: 100,),
            ),
          ],
        ),
      ),
    );
  }
}


class SetPaddingSize {
  static const sizePadding = EdgeInsets.all(25);
}

class setOnlyPadding {
  static const size = EdgeInsets.only(right: 45);
}