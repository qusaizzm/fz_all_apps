import 'package:fz_all_apps/ApiCubit_book/Features/home/data/repos/home_repo_impl.dart';
import 'package:fz_all_apps/ApiCubit_book/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:fz_all_apps/ApiCubit_book/Features/home/presentation/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:fz_all_apps/ApiCubit_book/constants.dart';
import 'package:fz_all_apps/ApiCubit_book/core/utils/app_router.dart';
import 'package:fz_all_apps/ApiCubit_book/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerDelegate:  AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        // routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
