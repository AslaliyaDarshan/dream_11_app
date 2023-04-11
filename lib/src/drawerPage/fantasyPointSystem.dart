import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


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
        title:  Text('Fantancy Point Ssystem',style: TextStyle(fontSize: 18.sp),),
      ),
    );
  }
}
