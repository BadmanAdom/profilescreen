import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    var _chosenValue;
    return DropdownButton<String>(
      focusColor:Colors.white,
      value: _chosenValue,
      //elevation: 5,
      style: TextStyle(color: Colors.white),
      iconEnabledColor:Colors.black,
      items: <String>[
        'Male','Female'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style:TextStyle(color:Colors.black),),
        );
      }).toList(),
      hint:Text(
        "Please choose a langauage",
        style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
      onChanged: ( value) {
        setState(() {
          _chosenValue = value;
        });
      },
    );
  }
}
