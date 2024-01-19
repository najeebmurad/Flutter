import 'package:get/get.dart';

import '../models/Unit.dart';

class UnitController extends GetxController{
  late Unit unit;
  void setUnit(Unit u){
    unit = u;
  }
}