import 'package:flutter/material.dart';

class FantancyPointSystem extends StatefulWidget {
  FantancyPointSystem({Key? key}) : super(key: key);

  @override
  State<FantancyPointSystem> createState() => _FantancyPointSystemState();
}

class _FantancyPointSystemState extends State<FantancyPointSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Fantancy Point Ssystem'),
      ),
    );
  }
}
