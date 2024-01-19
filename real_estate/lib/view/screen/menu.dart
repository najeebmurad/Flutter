import 'package:flutter/material.dart';
import 'package:real_estate/controller/MenuController.dart';
import 'package:real_estate/view/widget/CustomListTile.dart';
import '../../app/AppColor.dart';
import 'package:get/get.dart';
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MenuController controller = Get.put(MenuController());
    return Scaffold(
      appBar: AppBar(

        backgroundColor: AppColor.offwhite,
        elevation: 0,
        title: const Text(
          "الوحدات",
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: Container(
          decoration: BoxDecoration(
              color: AppColor.gold, borderRadius: BorderRadius.circular(100)),
          margin: const EdgeInsets.all(15),
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.white,
          ),
        ),
      ),
      backgroundColor: AppColor.offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GetBuilder<MenuController>(
          builder: (controller) {
            return ListView(

              children: controller.lisUnites,

            );
          }
        ),
      ),
    );
  }
}
