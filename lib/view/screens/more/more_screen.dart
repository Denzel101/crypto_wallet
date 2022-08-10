import 'package:crypo_wallet/view/constants/ui.dart';
import 'package:crypo_wallet/view/widgets/more/custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  static const double kTitlePadding = 23;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kAppPadding,
        horizontal: kAppPadding * 2,
      ),
      child: Column(
        children: [
          Container(
            height: 5.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          CustomTile(
            onTap: () {},
            title: 'Send',
            backgroundColor: Colors.orange,
            iconData: Icons.send,
            iconColor: Colors.deepOrange,
            ringColor: Colors.deepOrange,
            top: kTitlePadding,
          ),
          CustomTile(
            onTap: () {},
            title: 'Receive',
            backgroundColor: Colors.lightGreenAccent,
            iconData: Icons.call_received,
            iconColor: Colors.green,
            ringColor: Colors.green,
            top: kTitlePadding,
          ),
          CustomTile(
            onTap: () {},
            title: 'Exchange',
            backgroundColor: Colors.pink,
            iconData: Icons.currency_exchange,
            iconColor: Colors.purple,
            ringColor: Colors.purple,
            top: kTitlePadding,
          ),
          CustomTile(
            onTap: () {},
            title: 'QR Scan',
            subTitle: 'Invoice, addresses',
            backgroundColor: Colors.lightBlueAccent,
            iconData: Icons.qr_code_scanner,
            iconColor: Colors.blueAccent,
            ringColor: Colors.blueAccent,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(
                FontAwesomeIcons.xmark,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
