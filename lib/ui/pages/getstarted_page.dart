import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly Like a Bird',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Explore new world with us and let\n yourself get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    title: 'Get Started',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    width: 220,
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 80,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
