import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/presentation/views/widget/book_reating.dart';
import 'package:bookly1/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly1/core/utils/assets.dart';
import 'package:bookly1/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetalisView');
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         image: const DecorationImage(
            //           image: AssetImage(AssetsData.testImage),
            //           fit: BoxFit.fill,
            //         )),
            //   ),
            // ),
            CustomBookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail??"",),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      bookModel.volumeInfo?.title??"",
                      style: Styles.style20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo?.authors?[0]??"",
                    style: Styles.style14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free €',
                        style: Styles.style20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                        const BookReating(avergReating: 2,countReating: 5,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
