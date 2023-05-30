import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';

class FacilitiesItem extends StatelessWidget {
  // Tambahin Parameter nya
  final String text;
  final String imageURL;

  const FacilitiesItem({
    super.key,
    required this.text,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 18,
          height: 18,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageURL,
              ),
            ),
          ),
        ),
        Text(
          text,
          style: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
