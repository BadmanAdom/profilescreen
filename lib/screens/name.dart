import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
   final String name;

  const MyName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text(name, style: TextStyle(
        color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold,
      ),),
    );
  }
}
