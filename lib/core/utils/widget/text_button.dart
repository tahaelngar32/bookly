import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.color,
    required this.backGround,
    required this.onPressed,
    // required this.size,
    this.borderRadius,
  });
  final String text;
  final Color color;
  final void Function()? onPressed;
  // final Size size;
  final Color backGround;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(5),
        ),
        backgroundColor: backGround,
        // fixedSize: size,
      ),
      child: Text(
        text,
        style: Styles.style18.copyWith(color: color),
      ),
    );
  }
}
