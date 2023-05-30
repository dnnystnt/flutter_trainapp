import 'package:flutter/material.dart';
import 'package:trainapps/shared/theme.dart';
import 'package:trainapps/ui/pages/home_page.dart';
import 'package:trainapps/ui/pages/setting_page.dart';
import 'package:trainapps/ui/pages/transaction_page.dart';
import 'package:trainapps/ui/pages/wallet_page.dart';
import 'package:trainapps/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget build content nya
    Widget buildContent() {
      return HomePage();
    }

    // Bikin Bottom Navbar nya
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 64,
          margin: EdgeInsets.only(
              bottom: 32, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(
                imageURL: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageURL: 'assets/icon_search.png',
                isSelected: false,
              ),
              CustomButtonNavigationItem(
                imageURL: 'assets/icon_wallet.png',
                isSelected: false,
              ),
              CustomButtonNavigationItem(
                imageURL: 'assets/icon_activity.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
