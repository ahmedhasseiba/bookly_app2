import 'package:bloc/bloc.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(FeaturedBooksCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksCubitFailure(failure.errMessage)),
      (books) => emit(FeaturedBooksCubitSuccess(books)),
    );
  }
}
