import 'package:bloc/bloc.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestCubitState> {
  NewestBooksCubit(this.homeRepo) : super(NewestCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(NewestCubitFailure(failure.errMessage)),
      (books) => emit(NewestCubitSuccess(books)),
    );
  }
}
