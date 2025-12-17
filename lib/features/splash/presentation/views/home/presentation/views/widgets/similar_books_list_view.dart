import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const CustomBookItem(
              imageUrl:
                  'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.istockphoto.com/photos/book-search&ved=2ahUKEwjM0rCxvcKRAxV22gIHHcqFGq0Qh-wKegQIGRAE&usg=AOvVaw1dywG_RGpkDpAZ4OS4OW7_',
            ),
          );
        },
      ),
    );
  }
}
