import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedTopIndex = 0.obs;
  RxInt selectedMatchStateIndex = 0.obs;
  RxBool select = false.obs;

  selectBottomBar(int index) {
    selectedIndex.value = index;
    update();
  }

  selectTop(int index) {
    selectedTopIndex.value = index;
    update();
  }

  setSelectedMatchState(int index) {
    selectedMatchStateIndex.value = index;
    update();
  }
}
