// import 'package:fz_all_apps/ApiCubit_php/Features/home/data/models/book_model/book_model.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/manger/smila_books_cubit/similar_books_cubit.dart';
// import 'package:fz_all_apps/ApiCubit_php/Features/home/presentation/views/widgets/book_details_view_body.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class BookDetailsView extends StatefulWidget {
//   const BookDetailsView({Key? key,required this.CustModel});

//   final CustModel CustModel;
//   @override
//   State<BookDetailsView> createState() => _BookDetailsViewState();
// }

// class _BookDetailsViewState extends State<BookDetailsView> {
//   @override
//   void initState() {
//     BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
//         category: widget.CustModel.volumeInfo.categories![0]);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: BookDetailsViewBody(
//           CustModel: widget.CustModel,
//         ),
//       ),
//     );
//   }
// }
