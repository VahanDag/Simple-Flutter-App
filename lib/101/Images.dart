import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("hello world")),
      ),
      body: Column(children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            ImageItems().pekkaWallpaper,
            // fit: BoxFit.cover,
            // height: 50,
          ),
        ),
        SizedBox(
          child: Image.network(
            "https://i.pinimg.com/originals/51/c8/68/51c8687064ede96886c4a12837b3697e.jpg",
            height: 300,
            width: 350,
          ),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String pekkaWallpaper = "assets/pekka.png";
  final String kingWallpaper = "assets/png/king.png";
  final String pekkaForDemo = "pekkaWallpaper";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover,height: 300,width: 300,);
  }

  String get _nameWithPath => "assets/png/$name.png";
}