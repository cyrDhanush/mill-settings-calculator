import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/textfielddecoration.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;
  const CustomTextField({super.key, this.hint = "", this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: (widget.controller != null) ? (widget.controller) : (null),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
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
