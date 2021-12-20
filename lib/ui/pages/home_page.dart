import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 30,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Derian,\nIndra Pratama',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Where to fly today?',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'),
                  ),
                  shape: BoxShape.circle,
                ),
              )
            ],
          ));
    }

    Widget popularDestination() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imgUrl: 'assets/image_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imgUrl: 'assets/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imgUrl: 'assets/image_destination3.png',
                rating: 5.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imgUrl: 'assets/image_destination7.png',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Danau Beratan',
              city: 'Singajara',
              imgUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
            const DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imgUrl: 'assets/image_destination8.png',
              rating: 4.0,
            ),
            const DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imgUrl: 'assets/image_destination9.png',
              rating: 4.0,
            )
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.only(bottom: 105),
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
