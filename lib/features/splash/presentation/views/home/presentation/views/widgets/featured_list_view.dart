import 'package:bookly_app2/core/widgets/custom_error_message.dart';
import 'package:bookly_app2/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const CustomBookItem(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksCubitFailure) {
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
