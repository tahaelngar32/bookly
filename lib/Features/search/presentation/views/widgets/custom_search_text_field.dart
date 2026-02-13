import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'type your search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              Icons.search,
              size: 22,
            ),
          ),
        ),
        enabledBorder: buldOutLineBorder(),
        focusedBorder: buldOutLineBorder(),
      ),
    );
  }

  OutlineInputBorder buldOutLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
