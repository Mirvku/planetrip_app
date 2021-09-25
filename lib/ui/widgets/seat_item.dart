import 'package:flutter/material.dart';
import 'package:planetrip_app/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. Available 1. Selected 2.Unavailable
  final int status;
  const SeatItem({
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    background() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Text(
            'YOU',
            style: whitekTextStyle.copyWith(
              fontWeight: semiBold,
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
        color: background(),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: child(),
      ),
    );
  }
}
