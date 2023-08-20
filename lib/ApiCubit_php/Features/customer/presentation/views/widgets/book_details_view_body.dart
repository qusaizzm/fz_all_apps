// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/book_rating.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/featured_list_view.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/similar_books_list_view.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/similar_books_section.dart';
// import 'package:fz_all_apps/ApiCubit_php/core/utils/styles.dart';
// import 'package:fz_all_apps/ApiCubit_php/core/widgets/custom_button.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'books_action.dart';
// import 'books_details_sectioni.dart';
// import 'custom_book_details_app_bar.dart';
// import 'custom_book_item.dart';

// class BookDetailsViewBody extends StatelessWidget {
//   const BookDetailsViewBody({Key? key,required this.CustModel});

//   final CustModel CustModel;
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverFillRemaining(
//           hasScrollBody: false,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//                 const CustomBookDetailsAppBar(),
//                 BookDetailsSection(
//                   book: CustModel,
//                 ),
//                 const Expanded(
//                   child: SizedBox(
//                     height: 50,
//                   ),
//                 ),
//                 const SimilarBooksSection(),
//                 const SizedBox(
//                   height: 40,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
