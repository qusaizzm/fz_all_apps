import 'package:fz_all_apps/ApiCubit_php/Features/customer/data/models/customer_model.dart';
import 'package:fz_all_apps/ApiCubit_php/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
// import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.custModel});

  final CustModel custModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: custModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // CustomBookImage(
            //     imageUrl: custModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            // const SizedBox(
            //   width: 30,
            // ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      custModel.custname!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    custModel.den!,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      // BookRating(
                      //   rating:
                      //       custModel.volumeInfo.averageRating?.round() ?? 0,
                      //   count: custModel.volumeInfo.ratingsCount ?? 0,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
