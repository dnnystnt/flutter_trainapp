import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Bonus Card
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 208,
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_card.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 40,
              offset: Offset(0, 15),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      ),
                      Text(
                        'Joe Cooler',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_train.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'TRAIN CREDIT',
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: reguler,
              ),
            ),
            Text(
              'IDR 0',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    }

    // Bikin Widget Terms & Conditions
    Widget tac() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Terms and Service 01',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '1.1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nisi enim, porta id tortor nec, lobortis dapibus sapien. Donec venenatis consectetur vestibulum. Integer mollis accumsan rutrum.',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Terms and Service 02',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '2.1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nisi enim, porta id tortor nec, lobortis dapibus sapien. Donec venenatis consectetur vestibulum. Integer mollis accumsan rutrum.',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Bikin Widget Submit Button
    Widget submitButton() {
      return CustomButton(
        title: 'Lets Take a Train',
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
        width: 300,
        margin: EdgeInsets.only(
          top: 60,
          bottom: 40,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
              tac(),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
