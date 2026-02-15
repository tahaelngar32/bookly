import 'package:bookly1/Features/home/presentation/views/widget/similar_box_list_view.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.style14.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        const SimilarBoxListView(),
      ],
    );
  }
}
