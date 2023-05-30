import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imageURL;
  final bool isSelected;

  const CustomButtonNavigationItem({
    super.key,
    required this.imageURL,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageURL,
              ),
            ),
          ),
        ),
        // Bikin Indikator nya jika Selected
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
