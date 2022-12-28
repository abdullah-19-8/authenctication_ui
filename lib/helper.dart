import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  bool obscure;
  bool isPassword = false;
  TextInputType? keyboardType;
  MyTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.obscure = false,
    this.isPassword = false,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: widget.obscure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscure = !widget.obscure;
                  });
                },
                icon: widget.obscure
                    ? const Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
              )
            : null,
      ),
    );
  }
}
