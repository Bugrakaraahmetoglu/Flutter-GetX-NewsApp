import 'package:get/get.dart';
import 'package:newsapp/pages/ArticalPage/ArticalPage.dart';
import 'package:newsapp/pages/HomePage/HomePage.dart';
import 'package:newsapp/pages/ProfilePage/ProfilePage.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;

  var pages = [
     HoomePage(),
     ArticalPage(),
     ProfilePage(),
  ].obs;
  
}