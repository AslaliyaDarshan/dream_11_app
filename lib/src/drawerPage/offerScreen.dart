import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Offer'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 111,
            right: 11,
            left: 11,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/offer2.png',
                  height: 217,
                ),
                Image.asset(
                  'assets/images/offer3.png',
                  height: 217,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/offer4.png',
                      height: 114,
                      width: 150,
                    ),
                    Image.asset(
                      'assets/images/offer4.png',
                      height: 114,
                      width: 150,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 52,
            left: 160,
            child: Image.asset(
              AssetUtilities.offer1,
              height: 117,
              width: 211,
            ),
          ),
        ],
      ),
    );
  }
}
