import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/ui.dart';

class HomeTopInfo extends StatelessWidget {
  const HomeTopInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.notifications_none_rounded,
              size: 30.0,
            ),
            CircleAvatar(
              radius: 15.0,
              backgroundColor: kCustomBlue,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Text(
          'Wallet',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Row(
          children: [
            const Text(
              'Mobile Team',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            Column(
              children: const [
                Icon(
                  FontAwesomeIcons.angleUp,
                  size: 7.0,
                  color: Colors.grey,
                ),
                Icon(
                  FontAwesomeIcons.angleDown,
                  size: 7.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
