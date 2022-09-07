// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_apps/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  CustomBottomNavigationItem({required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPurpleColor : kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
