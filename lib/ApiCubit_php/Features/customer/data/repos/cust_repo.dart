import 'package:fz_all_apps/ApiCubit_php/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/customer_model.dart';

abstract class CustomerRepo {
  Future<Either<Failure, List<CustModel>>> fetchAllCustomer();
  // Future<Either<Failure, List<CustModel>>> fetchFeaturedBooks();
  // Future<Either<Failure, List<CustModel>>> fetchSimilarBooks(
  //     {required String category});
}
