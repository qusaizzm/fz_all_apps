import 'package:fz_all_apps/ApiCubit_php/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({
  //   super.key,
  //   required this.backgroundColor,
  //   required this.textColor,
  //   this.borderRadius,
  //   required this.text,
  //   this.fontSize,
  //   this.onPressed,
  // });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;

  const CustomButton({Key? key, required this.text, required this.backgroundColor,required this.textColor, this.borderRadius, this.fontSize, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  12,
                ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
