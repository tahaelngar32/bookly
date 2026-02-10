import 'package:bookly1/Features/home/data/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'fueater_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          FeatureBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.style20),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
