import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
        return  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomListViewItem(),);
      }),
    );
  }
}
