import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/widgets/custom_button.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_success.png',
                  ),
                ),
              ),
            ),
            Text(
              'Booking Success!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Thank you for Booking with Us. Lets \nExplore the Whole World through Train',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: reguler,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'Back to Home',
              width: 268,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              margin: EdgeInsets.only(top: 40),
            ),
          ],
        ),
      ),
    );
  }
}
