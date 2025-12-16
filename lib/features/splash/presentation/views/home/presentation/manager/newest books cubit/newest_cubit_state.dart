part of 'newest_cubit_cubit.dart';

sealed class NewestCubitState extends Equatable {
  const NewestCubitState();

  @override
  List<Object> get props => [];
}

final class NewestCubitInitial extends NewestCubitState {}

final class NewestCubitLoading extends NewestCubitState {}

final class NewestCubitFailure extends NewestCubitState {
  final String errMessage;

  const NewestCubitFailure(this.errMessage);
}

final class NewestCubitSuccess extends NewestCubitState {
  final List<BookModel> Books;

  const NewestCubitSuccess(this.Books);
}
