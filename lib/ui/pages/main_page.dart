// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_apps/shared/theme.dart';
import 'package:travel_apps/ui/pages/home_page.dart';
import 'package:travel_apps/ui/pages/setting_page.dart';
import 'package:travel_apps/ui/pages/transaction_page.dart';
import 'package:travel_apps/ui/pages/wallet_page.dart';
import 'package:travel_apps/ui/pages/widget/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  WidgetBuildContent() {
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_home.png', isSelected: true),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          WidgetBuildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
