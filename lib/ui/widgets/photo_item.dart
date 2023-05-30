import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  // Tambah parameter nya
  final String imageURL;

  const PhotoItem({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(
            imageURL,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
