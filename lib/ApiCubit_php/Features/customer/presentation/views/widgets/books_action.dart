// import 'package:fz_all_apps/ApiCubit_php/Features/home/data/models/book_model/book_model.dart';
// import 'package:fz_all_apps/ApiCubit_php/core/utils/function/launch_url.dart';
// import 'package:flutter/material.dart';
// // import 'package:url_launcher/url_launcher.dart';

// import '../../../../../core/widgets/custom_button.dart';

// class BooksAction extends StatelessWidget {
//   const BooksAction({Key? key,required this.CustModel});

//   final CustModel CustModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: Row(
//         children: [
//           const Expanded(
//               child: CustomButton(
//             text: 'Free',
//             backgroundColor: Colors.white,
//             textColor: Colors.black,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16),
//               bottomLeft: Radius.circular(16),
//             ),
//           )),
//           Expanded(
//               child: CustomButton(
//             onPressed: () {
//               launchCustomUr(context, 'CustModel.volumeInfo.previewLink');
//             },
//             fontSize: 16,
//             text: getText(CustModel),
//             backgroundColor: const Color(0xffEF8262),
//             textColor: Colors.white,
//             borderRadius: const BorderRadius.only(
//               topRight: Radius.circular(16),
//               bottomRight: Radius.circular(16),
//             ),
//           )),
//         ],
//       ),
//     );
//   }

//   String getText(CustModel CustModel) {
//     if (CustModel.volumeInfo.previewLink == null) {
//       return 'Not Avaliable';
//     } else {
//       return 'Preview';
//     }
//   }
// }
