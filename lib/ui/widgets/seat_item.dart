import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. Available ; 1. Selected ; 2. Unavailable

  // Buat pengkondisian
  final int status;

  const SeatItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
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
                fontSize: 16,
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
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
