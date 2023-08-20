import 'package:dio/dio.dart';
import 'package:fz_all_apps/ApiCubit_php/Features/customer/data/repos/cust_repo_impl.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<CustomerRepoImpl>(CustomerRepoImpl(
    getIt.get<ApiService>(),
  ));
}
