import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/controller/UnitController.dart';
import 'package:real_estate/view/screen/UnitDetails.dart';
import 'package:real_estate/view/widget/CustomListTile.dart';
import '../models/Unit.dart';
import 'getDataController.dart';

class MenuController extends GetxController {

  List<Widget> lisUnites = [];

  void setListUnits(List<Unit> units) {
    lisUnites.clear();
    units.forEach((unit) {
      lisUnites.add(
          CustomListTile(title: 'الوحدة',
              subtitle: unit.unitType,
              image: unit.images.isNotEmpty ? unit.images[0]
                  .toString():'',
              price: unit.annualPrice.toStringAsFixed(2),
          onTap: (){
            Get.put(UnitController()).setUnit(unit);
            Get.to(UnitDetails());
          },
          )
      );
    });

    update();
  }


  @override
  void onInit() async {
    super.onInit();
    List<Unit> units = await fetchUnits();
    setListUnits(units);
  }

}