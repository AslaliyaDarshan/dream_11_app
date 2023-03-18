import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/srings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';


Widget buttonWidget(Function() onTap, BuildContext context) {
  late double hsize = MediaQuery.of(context).size.height;
  late double wsize = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Positioned(
          bottom: hsize*0.09,
          left: wsize*0.04,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              height: hsize*0.03,
              width: wsize*0.2,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(217, 217, 217, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: const Offset(
                      10,
                      5.0
                    ),
                  ),
                ],
              ),
              child: const Center(child: AutoSizeText(Strings.next,style: TextStyle(fontFamily:"Imprima",fontSize: 14)),),
            ),
          )),
      Positioned(
          bottom: hsize*0.04,
          left: wsize*0.04,
          child: GestureDetector(
            onTap: () {
              Get.offAll(LoginPage());
              //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return LoginPage();}), (route) => false);
            },
            child: Container(
              height: hsize*0.03,
              width: wsize*0.2,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(217, 217, 217, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: const Offset(10, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  ),
                ],
              ),
              child:  Center(child: AutoSizeText(Strings.skip,style: TextStyle(fontSize: 14,fontFamily:"Imprima"),)),
            ),
          ),),
    ],
  );
}

Widget innerShadowButtonWidget(String text, BuildContext context,{ double ?height,double ?width,double radius = 0, TextStyle? textStyle ,Color? color}) {
  late double hsize = MediaQuery.of(context).size.height;
  late double wsize = MediaQuery.of(context).size.width;
  return Container(
    height: hsize*height!,
    width: wsize*width!,
    padding: const EdgeInsets.only(right: 4, left: 4, top: 6, bottom: 6),
    decoration: const BoxDecoration(
        color: Color.fromRGBO(54, 130, 54, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(54, 130, 54, 1),
              spreadRadius: 5),
        ]),
    child: Center(
      child: Text(
        text,
        style: textStyle ??
            const TextStyle(color: Colors.white, fontFamily: "Imprima"),
      ),
    ),
  );
}

// Widget innerShadowButtonWidget(String text, BuildContext context,{double radius = 0, double? width, TextStyle? textStyle ,Color? color}) {
//   late double hsize = MediaQuery.of(context).size.height;
//   late double wsize = MediaQuery.of(context).size.width;
//   return Container(
//     height:hsize*0.07??,
//       width: wsize*0.6??width,
//       decoration: BoxDecoration(
//           color: const Color.fromRGBO(54, 130, 54, 1),
//           borderRadius: BorderRadius.all(Radius.circular(radius))),
//       padding: const EdgeInsets.all(10),
//       child: Center(
//         child: Text(
//           text,
//           style: textStyle ?? const TextStyle(color: Colors.white,fontFamily:"Imprima"),
//         ),
//       ));
// }

Widget customButton(String text, BuildContext context,{double?height,double?width,double radius = 0}) {
late double hsize = MediaQuery.of(context).size.height;
late double wsize = MediaQuery.of(context).size.width;
  return Container(
       height: hsize*height!,
       width: wsize*width!,
    padding: const EdgeInsets.only(right: 4, left: 4, top: 6, bottom: 6),
    decoration: const BoxDecoration(
        color: Color.fromRGBO(54, 130, 54, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(54, 130, 54, 1),
              spreadRadius: 5)
        ]),
    // width: double.infinity,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white,fontFamily: "Imprima"),
      ),
    ),
  );
}

Widget loginSignUpButton(
    BuildContext context, String image, String text, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 26,
          width: 135,
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    blurRadius: 7,
                    spreadRadius: 7)
              ]),
          // width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 18,fontFamily: "Imprima"),
              ),
            ],
          ),
        )),
  );
}

Widget customTextFormField(TextEditingController controller,BuildContext context, String hintText) {
  late double hsize = MediaQuery.of(context).size.height;
  late double wsize = MediaQuery.of(context).size.width;
  return Container(
    height: hsize*0.06,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(217, 217, 217, 1),
        borderRadius: BorderRadius.circular(23),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 7,
              spreadRadius: 7)
        ]),
    child: Padding(
      padding:  EdgeInsets.only(top: hsize*0.01),
      child: TextFormField(
        controller: controller,
        inputFormatters: [
          LengthLimitingTextInputFormatter(30),
        ],
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
          fillColor: const Color.fromRGBO(217, 217, 217, 1),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: BorderSide.none),
        ),
      ),
    ),
  );
}
