import 'package:carousel_slider/carousel_slider.dart';
import 'package:get_x/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  //Variablre

  final carouselController = CarouselSliderController();
  RxInt currentIndex = 0.obs;

  //on Carosel Pagee Changed
  void onPageChanged(int index) {
    currentIndex.value = index;
  }
}
