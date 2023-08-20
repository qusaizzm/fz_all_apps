// import 'package:fz_all_apps/ApiCubit_php/Features/home/data/models/book_model/book_model.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/data/repos/home_repo_impl.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/manger/smila_books_cubit/similar_books_cubit.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/book_details_view.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/home_view.dart';
import 'package:fz_all_apps/ApiCubit_php/Features/customer/presentation/views/home_view.dart';
import 'package:fz_all_apps/ApiCubit_php/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static const kCustomerView = '/customerView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      GoRoute(
        path: kCustomerView,
        builder: (context, state) => const CustomerView(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SimilarBooksCubit(
      //       getIt.get<HomeRepoImpl>(),
      //     ),
      //     child: BookDetailsView(
      //       CustModel: state.extra as CustModel,
      //     ),
      //   ),
      // ),
    ],
  );
}
