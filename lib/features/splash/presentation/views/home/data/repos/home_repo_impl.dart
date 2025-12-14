import 'package:bookly_app2/core/errors/failures.dart';
import 'package:bookly_app2/core/utils/api_service.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  Future<Either<Failure, List<BookModel>>> fetchNewestBook() async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailure());
      // TODO
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook() {
    // TODO: implement fetchNewsetBook
    throw UnimplementedError();
  }
}
