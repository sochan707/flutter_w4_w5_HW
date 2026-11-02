import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(40),
        margin: EdgeInsets.all(50),
        color: Colors.blue[100],
        child: Container(
          padding: EdgeInsets.all(100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue[200]
          ),
          child: Center(
            child: Text("CADT",
              style: TextStyle(
                fontSize: 59,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    )
  );
}