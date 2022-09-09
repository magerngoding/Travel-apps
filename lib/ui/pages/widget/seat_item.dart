import 'package:flutter/material.dart';
import 'package:travel_apps/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE : 0 = AVAILABLE, 1 = SELECTED, 2 = UNAVAILABLE
  final int status;

  SeatItem({required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPurpleColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPurpleColor;
        case 1:
          return kPurpleColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
