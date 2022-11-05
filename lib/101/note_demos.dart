import 'package:flutter/material.dart';
import 'package:ucuncudeneme/101/Images.dart';

class noteDemos extends StatelessWidget {
  const noteDemos({Key? key}) : super(key: key);

  get title => "Create your first app";
  get message => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus, risus sit amet volutpat cursus";
  get buttonTitle => "Create a note";
  get importNotes => "Create a note";
  get message2 => "See you again";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().pekkaForDemo),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _TextWidget(title: title,),
            ),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _SubtitleWidget(message: message),
            ),
            Text(message2,style: Theme.of(context).textTheme.headline3,),
            Spacer(),
            ElevatedButton(onPressed:() {}, child: SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  buttonTitle,
                  style: Theme.of(context).textTheme.headline5,)))),
            TextButton(onPressed:() {}, child: Text(importNotes)),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key, this.textAlign = TextAlign.center,
    required this.message,
  }) : super(key: key);

  final String message;
  final TextAlign textAlign;  
  @override
  Widget build(BuildContext context) {
    return Text(
      message ,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w400));
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
        color: Colors.white70, fontWeight: FontWeight.w800),
      );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 30);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}