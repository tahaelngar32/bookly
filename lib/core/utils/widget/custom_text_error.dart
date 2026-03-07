import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextError extends StatelessWidget {
  const CustomTextError({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.style18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
