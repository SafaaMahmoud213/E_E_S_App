import 'package:flutter/material.dart';

void CustomScaffoldMessanger(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
