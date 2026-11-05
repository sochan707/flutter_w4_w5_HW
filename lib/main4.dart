import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.blue,
          ),
          Row(
            children: [
              Expanded(child: Container(
                color: Colors.green,
                height: 100,
              )),
              Container(
                width: 100,
                color: Colors.pink,
                height: 100,
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              SizedBox( width: 20,),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              SizedBox( width: 20,),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: Container(
            color: Colors.pink,
          ))
            
        ],
      ),
    )
  );
}