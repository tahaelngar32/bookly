import 'package:bookly1/Features/home/data/presentation/views/widget/book_reating.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/books_action.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/custom_book_image.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/similar_box_list_view.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:bookly1/core/utils/widget/text_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .19),
                  child: const CustomBookImage(),
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
                  'The Jungle Book',
                  style: Styles.style18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(.7)),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookReating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.style14.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SimilarBoxListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
    // return
  }
}
