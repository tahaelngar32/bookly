import 'package:bookly1/core/utils/widget/text_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            text: '19.99€',
            color: Colors.black,
            backGround: Colors.white,
            onPressed: () {},
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            text: 'Free preview',
            color: Colors.white,
            backGround: const Color(0xffEF8262),
            onPressed: () {},
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        )
      ],
    );
  }
}
