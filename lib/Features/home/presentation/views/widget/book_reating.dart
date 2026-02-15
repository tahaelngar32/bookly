import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookReating extends StatelessWidget {
  const BookReating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_sharp, color: Color(0xffFFDD4F)),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Styles.style16,
        ),
        SizedBox(
          width: 3,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.style14,
          ),
        ),
      ],
    );
  }
}
