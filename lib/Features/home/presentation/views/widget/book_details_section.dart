import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/presentation/views/widget/book_reating.dart';
import 'package:bookly1/Features/home/presentation/views/widget/books_action.dart';
import 'package:bookly1/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
   
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.style30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.style18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(.7)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookReating(
          mainAxisAlignment: MainAxisAlignment.center,avergReating: 2,countReating: 5,
        ),
        const SizedBox(
          height: 10,
        ),
        const BooksAction(),
      ],
    );
  }
}
