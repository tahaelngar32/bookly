import 'package:bookly1/Features/home/presentation/manger/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly1/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly1/core/utils/widget/custom_loding_indicator.dart';
import 'package:bookly1/core/utils/widget/custom_text_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilerBooksFailuer) {
          return CustomTextError(errMessage: state.errorMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
