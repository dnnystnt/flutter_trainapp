import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  // tambahkan parameter nya
  final String namestation;
  final String city;
  final String imageURL;

  const DestinationCard({
    super.key,
    required this.namestation,
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
        width: 233,
        height: 326,
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 213,
              height: 220,
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(
                    imageURL,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namestation,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
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
