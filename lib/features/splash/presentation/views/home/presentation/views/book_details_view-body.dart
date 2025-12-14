import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/custome_book_details_app_bar.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailAppBar(),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 20)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
