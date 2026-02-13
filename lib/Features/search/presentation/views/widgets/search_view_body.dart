import 'package:bookly1/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly1/Features/search/presentation/views/widgets/result_search_list_view.dart';
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


