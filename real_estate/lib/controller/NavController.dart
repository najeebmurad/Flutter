

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavController extends GetxController{
  int currentView = 0;
  bool isButton = false;
  PageController pageController = PageController();
  void changePage(int page){
    if(isButton){
      isButton = false;
    }else{
      currentView = page;
      pageController.animateToPage(
          page, duration: const Duration(milliseconds: 300),
          curve: Curves.ease);

      update();
    }

  }
  void changePageButton(int page){
      isButton = true;
      currentView = page;
      pageController.animateToPage(
          page, duration: const Duration(milliseconds: 300),
          curve: Curves.ease);
      update();
  }




}