import 'package:bookly1/Features/home/presentation/manger/feauterd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly1/core/utils/widget/custom_loding_indicator.dart';
import 'package:bookly1/core/utils/widget/custom_text_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatuerdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(),
                  );
                }),
          );
        } else if (state is FeatuerdBooksFailuer) {
          return CustomTextError(errMessage: state.errorMessag);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
