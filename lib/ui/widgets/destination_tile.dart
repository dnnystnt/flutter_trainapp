import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/pages/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageURL;

  const DestinationTile({
    super.key,
    required this.name,
    required this.city,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageURL,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: reguler,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
