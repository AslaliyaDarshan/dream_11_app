import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ResposiblePlayScreen extends StatefulWidget {
  ResposiblePlayScreen({Key? key}) : super(key: key);

  @override
  State<ResposiblePlayScreen> createState() => _ResposiblePlayScreenState();
}

class _ResposiblePlayScreenState extends State<ResposiblePlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Text('Responsible Play',style: TextStyle(fontSize: 18.sp),),
      ),
    );
  }
}
