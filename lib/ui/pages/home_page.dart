import 'package:flutter/material.dart';
import 'package:planetrip_app/shared/theme.dart';
import 'package:planetrip_app/ui/widgets/destination_card.dart';
import 'package:planetrip_app/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nShin Ryujin',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
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
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30,),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                image: 'assets/image_destination1.png',
                rating: 4.8,
                namaDestinasi: 'Lake Ciliwung',
                kota: 'Tangerang',
              ),
              DestinationCard(
                image: 'assets/image_destination2.png',
                rating: 4.7,
                namaDestinasi: 'White House',
                kota: 'Spain',
              ),
              DestinationCard(
                image: 'assets/image_destination3.png',
                rating: 4.8,
                namaDestinasi: 'Hill Heyo',
                kota: 'Monaco',
              ),
              DestinationCard(
                image: 'assets/image_destination4.png',
                rating: 5.0,
                namaDestinasi: 'Menarra',
                kota: 'Japan',
              ),
              DestinationCard(
                image: 'assets/image_destination5.png',
                rating: 4.8,
                namaDestinasi: 'Payung Teduh',
                kota: 'Singapore',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations(){
      return Container(
        margin: EdgeInsets.only(
          top:30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              )
            ),
            DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              destination: 'Danau Beratan',
              city: 'Singajara',
              rating: 4.5,
            ),
            DestinationTile(
              imageUrl: 'assets/image_destination7.png',
              destination: 'Sidney Opera',
              city: 'Australia',
              rating: 4.7,
            ),
            DestinationTile(
              imageUrl: 'assets/image_destination8.png',
              destination: 'Roma',
              city: 'Italy',
              rating: 4.8,
            ),
            DestinationTile(
              imageUrl: 'assets/image_destination9.png',
              destination: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.5,
            ),
            DestinationTile(
              imageUrl: 'assets/image_destination10.png',
              destination: 'Hill Hey',
              city: 'Monaco',
              rating: 4.7,
            ),
          ],
        ),
      );
    }


    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
