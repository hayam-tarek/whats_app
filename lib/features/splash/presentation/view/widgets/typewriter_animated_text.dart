import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

TypewriterAnimatedText typewriterAnimatedText() {
  return TypewriterAnimatedText(
    "The best chat app",
    textStyle: const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
    ),
    speed: const Duration(milliseconds: 100),
    cursor: '|',
  );
}
