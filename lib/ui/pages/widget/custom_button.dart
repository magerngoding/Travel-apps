import 'package:flutter/material.dart';
import 'package:travel_apps/shared/theme.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  CustomeButton({
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPurpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            )),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
