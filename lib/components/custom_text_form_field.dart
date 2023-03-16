import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  CustomTextField({this.hintText, this.inputType,this.onChanged , this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType ? inputType ;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
          ),
        ),
      ),
    );
  }
}
