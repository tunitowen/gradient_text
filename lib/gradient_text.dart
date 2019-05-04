library gradient_text;

import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText(
    this.data, {
    @required this.gradient,
    this.style,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
  });

  final String data;
  final Gradient gradient;
  final TextStyle style;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: Text(
        data,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: (style == null)
            ? TextStyle(color: Colors.white)
            : style.copyWith(color: Colors.white),
      ),
    );
  }
}
