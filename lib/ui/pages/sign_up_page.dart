import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/widgets/custom_button.dart';
import 'package:trainapps/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Title nya
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Lets Join Us and Enjoy Your \nTrip to Next Journey',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    // Bikin Widget InputSections
    Widget inputSection() {
      // Bikin widget name input
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your full name...',
        );
      }

      // Bikin widget email input
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address...',
        );
      }

      // Bikin Widget Password Input
      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Write a password...',
          obscureText: true,
        );
      }

      // Bikin Widget Reenter Password Input
      Widget rePasswordInput() {
        return CustomTextFormField(
          title: 'Re-Enter Password',
          hintText: 'Write a password...',
          obscureText: true,
        );
      }

      // Bikin Widget Hobby Input
      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Insert hobby...',
        );
      }

      // Bikin Widget Button nya
      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      // Bikin Widget untuk Button Terms & Conditions
      Widget tacButton() {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 32, bottom: 80),
          child: Text(
            'Terms & Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            rePasswordInput(),
            hobbyInput(),
            submitButton(),
            tacButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
