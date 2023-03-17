import 'package:dream_11_app/src/drawerPage/promoteappscreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PromoteAppScreen extends StatefulWidget {
  const PromoteAppScreen({super.key});

  @override
  State<PromoteAppScreen> createState() => _PromoteAppScreenState();
}

class _PromoteAppScreenState extends State<PromoteAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Promote App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              AssetUtilities.reffer,
              height: 300,
              width: 289,
            ),
          ),
          const Center(
            child: Text(
              'Do you Want to collaborate with us?',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Are you a ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'youtube ',
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      TextSpan(
                          text: 'or having a ',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      TextSpan(
                          text: 'Telegram ',
                          style: TextStyle(
                              color: Color.fromRGBO(55, 113, 200, 1),
                              fontSize: 20)),
                      TextSpan(
                          text: 'channel or ',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      TextSpan(
                          text: 'or having a ',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      TextSpan(
                          text: 'instagram ',
                          style: TextStyle(
                              color: Color.fromRGBO(216, 22, 161, 1),
                              fontSize: 20)),
                      TextSpan(
                          text: 'a want to promoter?',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ]),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PromoteAppForm();
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(27, 104, 0, 1), width: 2),
                    color: const Color.fromRGBO(54, 130, 54, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Connect Now',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
