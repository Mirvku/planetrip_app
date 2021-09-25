import 'package:flutter/material.dart';
import 'package:planetrip_app/shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String interestName;
  const InterestItem({
    required this.interestName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(
              right: 7,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Text(
            interestName,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
