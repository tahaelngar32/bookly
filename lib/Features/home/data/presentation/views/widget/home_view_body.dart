import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'fueater_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [   
          CustomAppbar(),
          FeatureBooksListView(),
          SizedBox(height: 50,),
          Text(
            'Best Seller',
            style: Styles.titleMadim,
          )
        ],
      ),
    );
  }
}
