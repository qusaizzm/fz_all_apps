// import 'package:fz_all_apps/ApiCubit_php/Features/home/data/models/book_model/book_model.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/custom_book_item.dart';
// import 'package:fz_all_apps/ApiCubit_php/core/utils/app_router.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:go_router/go_router.dart';

// import '../../../../../constants.dart';
// import '../../../../../core/utils/assets.dart';
// import '../../../../../core/utils/styles.dart';
// import 'book_rating.dart';

// class BookListViewItem extends StatelessWidget {
//   const BookListViewItem({Key? key,required this.CustModel});

//   final CustModel CustModel;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         GoRouter.of(context).push(
//           AppRouter.kBookDetailsView,
//           extra: CustModel,
//         );
//       },
//       child: SizedBox(
//         height: 125,
//         child: Row(
//           children: [
//             CustomBookImage(
//                 imageUrl: CustModel.volumeInfo.imageLinks?.thumbnail ?? ''),
//             const SizedBox(
//               width: 30,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .5,
//                     child: Text(
//                       CustModel.volumeInfo.title!,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: Styles.textStyle20.copyWith(
//                         fontFamily: kGtSectraFine,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   Text(
//                     CustModel.volumeInfo.authors![0],
//                     style: Styles.textStyle14,
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'Free',
//                         style: Styles.textStyle20.copyWith(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       BookRating(
//                         rating:
//                             CustModel.volumeInfo.averageRating?.round() ?? 0,
//                         count: CustModel.volumeInfo.ratingsCount ?? 0,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
