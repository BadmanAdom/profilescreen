import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String name;
  final Color color;
  const Button2({Key? key, required this.name, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width *.4,
            child: ElevatedButton(
              child: Text(name, style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400
              ),),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: color,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
