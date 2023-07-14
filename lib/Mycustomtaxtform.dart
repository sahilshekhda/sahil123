// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyText extends StatelessWidget {

  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final bool obscureText ;
  final int? maxLength;
  final int maxLines;
  final int errorMaxLines;
  MyText({

    Key? key,
    this.hint = "",
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.inputFormatters,
    this.validator,
    this.maxLength,
    this.obscureText =false,
    this.maxLines=1,
    this.errorMaxLines=1,

  }) : super(key: key) {
    // TODO: implement MyText
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: keyboardType,
      maxLength: maxLength,
      controller: controller,
      maxLines:maxLines ,
      validator: validator,
      obscureText:obscureText,
      inputFormatters: inputFormatters,
      style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 18
      ),
      decoration: InputDecoration(
        errorMaxLines: errorMaxLines,
        counterText: "",
        filled: true,
        fillColor: Colors.white12,
        hintText: hint,
        prefixIcon: prefixIcon,
        prefixIconColor: Color(0xff16213E),
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIconColor:Color(0xff16213E),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffFFD3B0) ,width: 2)
        ),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xff6D5D6E), width: 2)),

        focusedErrorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(width: 3,color: Colors.red.shade900 ),
        ),

        errorStyle: TextStyle(
            fontSize: 17,
            color: Colors.red.shade400
        ),

        errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 3,color: Colors.red.shade600 ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(width: 3, color: Color(0xff6B728E)),
        ),
      ),
    );
  }
}

