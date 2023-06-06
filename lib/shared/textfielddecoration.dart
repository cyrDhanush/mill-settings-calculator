import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';

InputDecoration inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 2,
    horizontal: 10,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: themecolor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: themecolor),
    borderRadius: BorderRadius.circular(12),
  ),
);
