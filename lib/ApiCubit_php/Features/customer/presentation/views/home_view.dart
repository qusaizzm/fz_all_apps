import 'package:flutter/material.dart';
import 'widget/customer_view_body.dart';

class CustomerView extends StatelessWidget {
  const CustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomrViewBody(),
    );
  }
}
