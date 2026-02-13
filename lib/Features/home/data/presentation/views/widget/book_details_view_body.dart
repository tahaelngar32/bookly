import 'package:bookly1/Features/home/data/presentation/views/widget/book_details_section.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/book_reating.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/books_action.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/custom_book_image.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/similar_box_list_view.dart';
import 'package:bookly1/Features/home/data/presentation/views/widget/similar_box_section.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilarBoxSection(),
                SizedBox(
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
