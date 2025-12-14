import 'package:bookly_app2/core/errors/failures.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}