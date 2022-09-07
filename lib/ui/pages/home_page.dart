// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_apps/shared/theme.dart';
import 'package:travel_apps/ui/pages/widget/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(left: defaultMargin, top: 30, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howody\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularDestinations() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tanggerang',
              imageUrl: 'assets/image_destination1.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'White House',
              city: 'spain',
              imageUrl: 'assets/image_destination2.png',
              rating: 4.7,
            ),
            DestinationCard(
              name: 'Hill Heyyo',
              city: 'Monaco',
              imageUrl: 'assets/image_destination3.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'Menarra',
              city: 'Japan',
              imageUrl: 'assets/image_destination4.png',
              rating: 5.0,
            ),
            DestinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination5.png',
              rating: 4.8,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestinations(),
      ],
    );
  }
}
