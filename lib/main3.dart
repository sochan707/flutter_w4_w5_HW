import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(75),
        child: Column(
          spacing: 30,
          children: [
            BlueButton(text: "OOP", color: 100),
            BlueButton(text: "Dart", color: 200),
            BlueButton(text: "Flutter", color: 300),
          ],
        ),
        
      ),
    )
  );
}

class BlueButton extends StatelessWidget {
  final String text;
  final int color;

  const new({
    super.key,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue[color],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(text,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}