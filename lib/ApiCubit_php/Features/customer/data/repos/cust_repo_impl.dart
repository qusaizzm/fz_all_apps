import 'package:fz_all_apps/ApiCubit_php/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:fz_all_apps/ApiCubit_php/core/errors/failures.dart';
import 'package:dio/dio.dart';

import '../models/customer_model.dart';
import 'cust_repo.dart';

class CustomerRepoImpl implements CustomerRepo {
  final ApiService apiService;

  CustomerRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<CustModel>>> fetchAllCustomer() async {
    var endPoint = 'get_cust.php';
    // 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science';
    try {
      var data = await apiService.get(endPoint: endPoint);
      List<CustModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(CustModel.fromJson(item));
        } catch (e) {
          books.add(CustModel.fromJson(item));
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  // @override
  // Future<Either<Failure, List<CustModel>>> fetchFeaturedBooks() async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
  //     List<CustModel> books = [];
  //     for (var item in data['items']) {
  //       books.add(CustModel.fromJson(item));
  //     }

  //     return right(books);
  //   } catch (e) {
  //     if (e is DioError) {
  //       return left(
  //         ServerFailure.fromDioError(e),
  //       );
  //     }
  //     return left(
  //       ServerFailure(
  //         e.toString(),
  //       ),
  //     );
  //   }
  // }

  // @override
  // Future<Either<Failure, List<CustModel>>> fetchSimilarBooks(
  //     {required String category}) async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint:
  //             'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
  //     List<CustModel> books = [];
  //     for (var item in data['items']) {
  //       books.add(CustModel.fromJson(item));
  //     }

  //     return right(books);
  //   } catch (e) {
  //     if (e is DioError) {
  //       return left(
  //         ServerFailure.fromDioError(e),
  //       );
  //     }
  //     return left(
  //       ServerFailure(
  //         e.toString(),
  //       ),
  //     );
  //   }
  // }
}
