import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.type, this.onChanged , this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;
 
 TextInputType? type ;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
     keyboardType:type ,
      obscureText:obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 11, 11, 11),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide:const  BorderSide(
            color: Color.fromARGB(255, 25, 22, 22),
            width:2
          ),
          borderRadius: BorderRadius.circular(14)
          ),


        border:  OutlineInputBorder(
          borderSide:const  BorderSide(
            color: Color.fromARGB(255, 14, 13, 13),
            width: 2.5
          ),
          borderRadius: BorderRadius.circular(14)
        ),
      ),
    );
  }
}
