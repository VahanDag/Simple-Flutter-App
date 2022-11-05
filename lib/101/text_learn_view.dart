import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView ({ Key? key }) : super(key: key);
  final String name = "Vahan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Hi $name ${name.length}",
          // maxLines: 2,
          style: ProjectStyles.welcomeStyle
          )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontSize: 16,
      letterSpacing: 3,
      decoration: TextDecoration.underline,
      color: Colors.red
  );
}