import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/pages/choose_seat_page.dart';
import 'package:trainapps/ui/widgets/custom_button.dart';
import 'package:trainapps/ui/widgets/facilities_item.dart';
import 'package:trainapps/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Background Image
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_destination10.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // Bikin Custom Shadow untuk background image nya
    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 106),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    // Bikin Widget Content nya
    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            // Note: TITLE
            Container(
              margin: EdgeInsets.only(top: 160),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seodo Grand Station',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Namwon, South Korea',
                          style: whiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 2),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_train.png',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '4.5',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 32,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Ut sed turpis molestie sed ultricies faucibus nullam sed volutpat.',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      height: 1.2,
                    ),
                  ),

                  // NOTE: PHOTOS
                  SizedBox(height: 20),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      PhotoItem(imageURL: 'assets/image_photo1.png'),
                      PhotoItem(imageURL: 'assets/image_photo2.png'),
                      PhotoItem(imageURL: 'assets/image_photo3.png'),
                    ],
                  ),

                  // NOTE: FACILITIES
                  SizedBox(height: 20),
                  Text(
                    'Facilities',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  FacilitiesItem(
                    text: 'WIFI',
                    imageURL: 'assets/icon_check.png',
                  ),
                  SizedBox(height: 6),
                  FacilitiesItem(
                    text: 'Clean Toilets',
                    imageURL: 'assets/icon_check.png',
                  ),
                ],
              ),
            ),

            // NOTE: BOOK BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // PRICE
                        Text(
                          'IDR 500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Per Person',
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // BOOK BUTTON
                  Container(
                    child: CustomButton(
                      title: 'Book Now',
                      width: 154,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseSeatPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
