import 'package:bookly1/Features/home/data/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly1/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Search Result',
            style: Styles.style20,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: RuseltSearchListView()),
        ],
      ),
    );
  }
}

class RuseltSearchListView extends StatelessWidget {
  const RuseltSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true,
        padding: EdgeInsets.zero,
        // itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
