import 'package:bookly_app2/core/utils/styles.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookItem(
            imageUrl:
                'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.istockphoto.com/photos/book-search&ved=2ahUKEwjM0rCxvcKRAxV22gIHHcqFGq0Qh-wKegQIGRAE&usg=AOvVaw1dywG_RGpkDpAZ4OS4OW7_',
          ),
        ),
        SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 18),
        BooksAction(),
      ],
    );
  }
}
