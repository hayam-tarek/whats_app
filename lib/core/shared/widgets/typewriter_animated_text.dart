import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

TypewriterAnimatedText typewriterAnimatedText({required String text}) {
  return TypewriterAnimatedText(
    text,
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    speed: const Duration(milliseconds: 100),
    cursor: '|',
  );
}
