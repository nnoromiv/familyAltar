// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final double fontSize;
  final bool suffixIcon;
  final VoidCallback? onPressed;
  final Widget icon;
  final TextInputType? keyboardType;

  const FormInput({
    super.key,
    this.hintText = 'Email',
    this.obscureText = false,
    this.fontSize = 18.0,
    this.suffixIcon = false,
    this.icon = const SizedBox(
      height: 10.0,
    ),
    this.onPressed,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          backgroundBlendMode: null,
          color: const Color.fromARGB(255, 231, 231, 231),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        style: const TextStyle(
            fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20.0),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                color: const Color.fromARGB(255, 210, 210, 210),
                fontSize: fontSize),
            suffixIcon: suffixIcon
                ? IconButton(
                    icon: icon,
                    onPressed: onPressed,
                    color: Colors.black,
                  )
                : null),
        keyboardType: keyboardType,
        obscureText: obscureText,
        obscuringCharacter: '£',
      ),
    );
  }
}
