import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

void main() {
  test('font size is carried to text widget', () {
    final gradientText = GradientText("this is a test", gradient: LinearGradient(colors: [Colors.red, Colors.black]), style: TextStyle(fontSize: 42),);
    expect(gradientText.style.fontSize, 42);
  });
}