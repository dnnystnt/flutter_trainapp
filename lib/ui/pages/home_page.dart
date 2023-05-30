import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/widgets/destination_card.dart';
import 'package:trainapps/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget header yang ada foto Profile Picture dan Notification
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 16,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile1.png',
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: reguler,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Joe Cooler',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_notification.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget Indonesian Area (dinamai idnAreaDestination)
    Widget idnAreaDestination() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Indonesia',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DestinationCard(
                    namestation: 'Stasiun Banyuwangi',
                    city: 'Banyuwangi',
                    imageURL: 'assets/image_destination1.png',
                  ),
                  DestinationCard(
                    namestation: 'Stasiun Jember',
                    city: 'Jember',
                    imageURL: 'assets/image_destination2.png',
                  ),
                  DestinationCard(
                    namestation: 'Stasiun Pasar Turi',
                    city: 'Surabaya',
                    imageURL: 'assets/image_destination3.png',
                  ),
                  DestinationCard(
                    namestation: 'Stasiun Lempuyangan',
                    city: 'Yogyakarta',
                    imageURL: 'assets/image_destination4.png',
                  ),
                  DestinationCard(
                    namestation: 'Stasiun Maros',
                    city: 'Makassar',
                    imageURL: 'assets/image_destination5.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget New Destination
    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 16,
          right: 16,
          bottom: 120,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Southeast Asia',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'Bang Sue Grand Station',
              city: 'Bangkok, Thailand',
              imageURL: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: 'Thung Song Hong Station',
              city: 'Bangkok, Thailand',
              imageURL: 'assets/image_destination7.png',
            ),
            DestinationTile(
              name: 'Sungai Petani Station',
              city: 'Kedah, Malaysia',
              imageURL: 'assets/image_destination8.png',
            ),
            DestinationTile(
              name: 'Lào Cai Station',
              city: 'Lao Cai, Vietnam',
              imageURL: 'assets/image_destination9.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        idnAreaDestination(),
        newDestination(),
      ],
    );
  }
}
