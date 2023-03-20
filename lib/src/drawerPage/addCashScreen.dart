import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';



class AddCashScreen extends StatefulWidget {
  AddCashScreen({Key? key}) : super(key: key);

  @override
  State<AddCashScreen> createState() => _AddCashScreenState();
}

class _AddCashScreenState extends State<AddCashScreen> {
  TextEditingController txtamount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Add Cash',style: TextStyle(fontFamily: "Imprima"),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: hsize*0.055,
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: wsize*0.02,
                  ),
                  Icon(
                    Icons.wallet,
                    color: Color.fromRGBO(0, 119, 47, 1),
                    size: wsize*0.07,
                  ),
                  SizedBox(
                    width: wsize*0.04,
                  ),
                  Text(
                    "Current Balance",
                    style: TextStyle(fontSize: 14,fontFamily: "Imprima"),
                  ),
                  Spacer(),
                  AutoSizeText('₹0',style: TextStyle(fontFamily: "Imprima"),),
                  SizedBox(width: wsize*0.02,),
                ],
              ),
            ),
          ),
          SizedBox(
            height: hsize*0.02,
          ),
          SizedBox(
            height: hsize*0.09,
            child: Card(
              child: Row(
                children: [
                   SizedBox(
                    width: wsize*0.02,
                  ),
                  Container(
                    height: hsize*0.06,
                    width: wsize*0.4,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 188, 93, 1),
                        borderRadius: BorderRadius.circular(9)),
                    child: Center(
                      child: Container(
                        height:hsize*0.055,
                        width: wsize*0.39,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 238, 238, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding:  EdgeInsets.only(left: wsize*0.02,right: wsize*0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Amount to add',
                                style: TextStyle(
                                  color: Color.fromRGBO(54, 130, 54, 1),
                                  fontSize: 12,fontFamily: "Imprima"
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: hsize*0.03,
                                    width: wsize*0.2,
                                    child: Center(
                                      child: TextFormField(
                                        onTap: (){
                                          txtamount.text="200";
                                        },
                                        style: TextStyle(fontSize: 12),
                                        controller: txtamount,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(7),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsetsDirectional.only(top: 0,start: 5),
                                          prefixText: "₹ ",
                                          filled: true,
                                          hintText: '₹ 200',
                                          hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6),fontSize: 12),
                                          fillColor: const Color.fromRGBO(217, 217, 217, 1),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //const Text('₹200',style: TextStyle(fontFamily: "Imprima"),),
                                  Image.asset(
                                    AssetUtilities.close,
                                    height: hsize*0.03,
                                    width:  wsize*0.04,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: hsize*0.032,
                    width: wsize*0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Center(child: AutoSizeText('₹5000000',style: TextStyle(fontFamily: "Imprima"),)),
                  ),
                   SizedBox(
                    width: wsize*0.02,
                  ),
                  Container(
                    height: hsize*0.032,
                    width: wsize*0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Center(child: AutoSizeText(maxLines: 1,'₹5000000',style: TextStyle(fontFamily: "Imprima"),)),
                  ),
                  SizedBox(
                    width: wsize*0.02,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: hsize*0.09,
            child: Card(
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(54, 130, 54, 1)),
                  onPressed: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: wsize*0.35,
                        right: wsize*0.35,
                    ),
                    child: const Text('ADD ₹150',style: TextStyle(fontFamily: "Imprima"),),
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
