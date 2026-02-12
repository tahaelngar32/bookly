import 'package:bookly1/Features/home/data/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
    
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.17),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
