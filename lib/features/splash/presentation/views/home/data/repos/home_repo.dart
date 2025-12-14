import 'package:bookly_app2/core/errors/failures.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
