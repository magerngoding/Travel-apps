// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_apps/models/transaction_model.dart';
import 'package:travel_apps/shared/theme.dart';
import 'package:travel_apps/ui/pages/widget/booking_detail_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOTE : DESTINATION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(transaction.destination.imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ],
          ),

          // NOTE : BOOKING DETAILS
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          // NOTE : BOOKING DETAILS ITEM
          BookingDetailItem(
            title: 'Traveler',
            valueText: '${transaction.amountOfTraveler} person',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Seat',
            valueText: '${transaction.selectedSeats}',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Insurance',
            valueText: transaction.insurance ? 'YES' : 'NO',
            valueColor: transaction.insurance ? kGreenColor : kRedColor,
          ),
          BookingDetailItem(
            title: 'Refundable',
            valueText: transaction.refundable ? 'YES' : 'NO',
            valueColor: transaction.refundable ? kGreenColor : kRedColor,
          ),
          BookingDetailItem(
            title: 'VAT',
            valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
            valueColor: kPurpleColor,
          ),
          BookingDetailItem(
            title: 'Price',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(
              transaction.price,
            ),
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(
              transaction.grandTotal,
            ),
            valueColor: kBlackColor,
          ),
        ],
      ),
    );
  }
}
