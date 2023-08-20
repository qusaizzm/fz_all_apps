import 'package:fz_all_apps/ApiCubit_book/Features/home/data/models/book_model/book_model.dart';
import 'package:fz_all_apps/ApiCubit_book/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
