import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" *1000),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" *500),
          ),
          Container(
            width: 150,
            height: 100,
            child:Center(child: Text("vahan")), 
            
            margin: EdgeInsets.all(20),
            // color: Colors.red,
            decoration: ProjectUtility.boxDecoration
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(colors:[Colors.red, Colors.black]),
      border: Border.all(color: Colors.green,width: 3),
      boxShadow: [BoxShadow(color:Colors.green, offset: Offset(0.1, 1), blurRadius: 12)]
  );
}

class ProjectContainerDecorations extends BoxDecoration {
  ProjectContainerDecorations():super (
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(colors:[Colors.red, Colors.black]),
      border: Border.all(color: Colors.green,width: 10),
      boxShadow: [BoxShadow(color:Colors.green, offset: Offset(0.1, 1), blurRadius: 12)]
  );
} 