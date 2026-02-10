import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookReating extends StatelessWidget {
  const BookReating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star_sharp, color: Color(0xffFFDD4F)),
        const Text(
          '4.8',
          style: Styles.style14,
        ),
        Text(
          '(2390)',
          style: Styles.style14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
