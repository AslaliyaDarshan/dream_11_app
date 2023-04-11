import 'package:get/get.dart';

class OnBoardingController extends GetxController {
    final index = 0.obs;
     RxBool isReachedLimit =false.obs;
    void incrementIndex (){
       index.value++;
       if(index.value==5){
          index.value =0;
          isReachedLimit.value =true;
       }
    }
}