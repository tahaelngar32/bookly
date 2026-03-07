import 'package:bookly1/Features/home/presentation/manger/feauterd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly1/Features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly1/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly1/core/utils/widget/custom_text_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
        builder: (context, state) {
      if (state is FeatuerdBooksSuccess) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            });
      } else if (state is FeatuerdBooksFailuer) {
         return Center(child: CustomTextError(errMessage: state.errorMessag));
       } else {
        return const Center(child: CircularProgressIndicator());
       }
    });
  }
}
