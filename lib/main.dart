import 'package:flutter/material.dart';
import 'package:ucuncudeneme/101/Images.dart';
import 'package:ucuncudeneme/101/buttons.dart';
import 'package:ucuncudeneme/101/container_size_learn_box.dart';
import 'package:ucuncudeneme/101/note_demos.dart';
import 'package:ucuncudeneme/101/paddings.dart';
import 'package:ucuncudeneme/101/text_learn_view.dart';

import '101/cards.dart';
import '101/stateless_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:  noteDemos(),
    );
  }
}
