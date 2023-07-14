import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function() onPressed;

  final String name;

  const Mybutton({
    Key? key,
    required this.onPressed,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Color(0xff6B728E)),
          elevation: MaterialStateProperty.all(2.0),
            backgroundColor: MaterialStateProperty.all( Color(0xff16213E)),
            shape: MaterialStateProperty.all(
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(6) ))
        ),
        onPressed: onPressed, child: Text(name));
  }
}
