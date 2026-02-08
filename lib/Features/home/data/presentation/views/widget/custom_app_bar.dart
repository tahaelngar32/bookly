import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 24,),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}