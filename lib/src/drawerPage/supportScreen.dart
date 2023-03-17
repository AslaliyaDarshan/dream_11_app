import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Support'),
      ),
      body: Column(
        children: [
          Image.asset(AssetUtilities.support),
          const Text(
            'Feel free to contact us at;',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: SizedBox(
              height: 73,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 14,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color.fromRGBO(255, 196, 160, 1),
                      child: Center(
                        child: Image.asset(
                          AssetUtilities.chat,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Chat with Us:',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'We are live and ready to help!',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(168, 168, 168, 1)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: SizedBox(
              height: 73,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 14,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color.fromRGBO(160, 210, 255, 1),
                      child: Center(
                        child: Image.asset(
                          AssetUtilities.message,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Email Us:',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'support@CrickSwitch.in',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(168, 168, 168, 1)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AssetUtilities.facebook1,
                height: 53,
                width: 53,
              ),
              Image.asset(
                AssetUtilities.youtube,
                height: 53,
                width: 53,
              ),
              Image.asset(
                AssetUtilities.instgram,
                height: 53,
                width: 53,
              ),
              Image.asset(
                AssetUtilities.twitter,
                height: 53,
                width: 53,
              ),
              Image.asset(
                AssetUtilities.telegram,
                height: 53,
                width: 53,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
