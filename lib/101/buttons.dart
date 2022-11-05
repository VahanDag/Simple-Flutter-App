import 'package:flutter/material.dart';

class LearnButtons  extends StatelessWidget {
  const LearnButtons ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Buttons")),
      body: Column(
        children: [
          TextButton(
            onPressed:() {} ,
            child: Text("Button1"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)),
            ),
          ElevatedButton(onPressed:null /*disable button*/, child: Text("Button2")),
          IconButton(onPressed:() {}, icon: Icon(Icons.abc_rounded), splashColor: Colors.red),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          OutlinedButton(
            onPressed:() {},
            child: Text("data", style: TextStyle(color: Colors.black),),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states)
              {
                if(states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }else {
                  return Colors.red;
                }
              })),
            ),
          InkWell(
            onTap: () {},
            child: Text("Vahan"),
          ),
        ],
      ),
    );
  }
}