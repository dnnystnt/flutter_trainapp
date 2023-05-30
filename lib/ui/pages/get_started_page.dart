import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/pages/splash_page.dart';
import 'package:trainapps/ui/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_get_started.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Train For Your Travel',
                  style: whiteTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Explore the whole world through \ntrain and let yourself get an \namazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 268,
                  margin: EdgeInsets.only(
                    top: 60,
                    bottom: 80,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
