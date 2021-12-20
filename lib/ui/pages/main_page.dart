import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomButtonNavigaionItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigaionItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomButtonNavigaionItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomButtonNavigaionItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent() {
      return const HomePage();
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            buildContent(),
            customBottomNavigation(),
          ],
        ));
  }
}
