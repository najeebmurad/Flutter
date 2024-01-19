import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate/app/AppColor.dart';
import 'package:real_estate/view/screen/UnitDetails.dart';
import 'package:real_estate/view/screen/menu.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColor.offwhite,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      locale: const Locale("ar"),
      home: Menu(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.gold,
        primarySwatch: AppColor.primary,
        fontFamily: "Roboto"
      ),

    );
  }
}

