import 'package:flutter/material.dart';
import 'package:fz_all_apps/ApiCubit_php/core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
// import 'featured_list_view.dart';

class CustomrViewBody extends StatelessWidget {
  const CustomrViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: CustomAppBar()),
              // FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
