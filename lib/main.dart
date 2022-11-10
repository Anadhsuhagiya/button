import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(home: demo(),));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  String s1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),

      body: InkWell(
        onTap: () {
          print("Before $s1");
          s1 = "X";
          print("After $s1");
          setState(() {

          });
        },
        child: Container(
          color: Colors.black,
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Text(s1,style: TextStyle(fontSize: 80,color: Colors.white,fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}

