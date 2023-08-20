import 'package:fz_all_apps/ApiCubit_php/constants.dart';
import 'package:fz_all_apps/ApiCubit_php/core/utils/app_router.dart';
import 'package:fz_all_apps/ApiCubit_php/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/customer/data/repos/cust_repo_impl.dart';
import 'Features/customer/presentation/manger/customer_cubit/featured_books_cubit.dart';

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CustomerCubit(
            getIt.get<CustomerRepoImpl>(),
          )..fetchCustomer(),
        ),
        // BlocProvider(
        //   create: (context) => NewsetBooksCubit(
        //     getIt.get<HomeRepoImpl>(),
        //   )..fetchNewestBooks(),
        // )
      ],
      child: MaterialApp.router(
        routerDelegate: AppRouter.router.routerDelegate,
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
