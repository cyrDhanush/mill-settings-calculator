import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/textfielddecoration.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  const CustomTextField({super.key, this.hint = ""});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 14,
        height: 0.9,
      ),
      decoration: inputDecoration.copyWith(
        hintText: widget.hint,
      ),
    );
  }
}
