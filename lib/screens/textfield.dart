import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final String hint;
  Widget? suffixIcon;

   MyField({Key? key, required this.hint, this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius:1,
              spreadRadius: 1
          )
          ]
      ),
      alignment: Alignment.center,
      height: 35,
      child: TextFormField(
        autocorrect: true,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(10),
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(.6), fontSize: 18),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide:
            BorderSide(color: Colors.black.withOpacity(.2), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
          ),
        ),
      ),
    );
  }
}
