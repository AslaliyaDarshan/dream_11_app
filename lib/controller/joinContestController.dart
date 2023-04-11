import 'package:get/get.dart';

class JoinContestController extends GetxController {
  /*Entry*/
  RxBool oneTo50 = false.obs;
  RxBool fifty1To100 = false.obs;
  RxBool one101To1000 = false.obs;
  RxBool one1001ToAbove = false.obs;

  /*Contest Size*/
  RxBool two = false.obs;
  RxBool three = false.obs;
  RxBool four = false.obs;
  RxBool fiveTo10 = false.obs;
  RxBool elevenTo20 = false.obs;
  RxBool twentyTo200 = false.obs;
  RxBool two201To1000 = false.obs;
  RxBool one1001To10000 = false.obs;

  /*Winnings*/
  RxBool oneTo1000 = false.obs;
  RxBool one1001To50000 = false.obs;
  RxBool five50001To1Lakh = false.obs;
  RxBool oneLakhToAbove = false.obs;

  /*Contest Type*/
  RxBool multiEntry = false.obs;
  RxBool one100Bonus = false.obs;

  /*SelectPlayerScreen.dart BottomSheet*/
  RxBool country1 = false.obs;
  RxBool country2 = false.obs;
  RxBool all = true.obs;
}
