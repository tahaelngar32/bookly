import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/core/utils/widget/text_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            text: '19.99€',
            color: Colors.black,
            backGround: Colors.white,
            onPressed: () async {
              final Uri _url =
                  Uri.parse(bookModel.volumeInfo?.previewLink ?? "");
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            text: 'Free preview',
            color: Colors.white,
            backGround: const Color(0xffEF8262),
            onPressed: () async {
              final Uri _url =
                  Uri.parse(bookModel.volumeInfo?.previewLink ?? "");
              if (!await launchUrl(_url)) {
               // throw Exception('Could not launch $_url');
              }
            },
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        )
      ],
    );
  }
}
