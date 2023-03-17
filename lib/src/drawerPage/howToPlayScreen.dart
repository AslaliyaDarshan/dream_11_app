import 'package:flutter/material.dart';

class HowToPlaySceeen extends StatefulWidget {
  HowToPlaySceeen({Key? key}) : super(key: key);

  @override
  State<HowToPlaySceeen> createState() => _HowToPlaySceeenState();
}

class _HowToPlaySceeenState extends State<HowToPlaySceeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('How to Play'),
      ),
    );
  }
}
