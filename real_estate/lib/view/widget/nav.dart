import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/AppColor.dart';
import '../../controller/NavController.dart';

class Nav extends GetView<NavController> {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ((MediaQuery.of(context).size.width-32)/3);
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: AppColor.lightgray,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            right: ((width) * controller.currentView),

            child: Container(
              decoration: BoxDecoration(
                color: AppColor.SherpaBlue,
                borderRadius: BorderRadius.only(
                  topRight: controller.currentView == 0
                      ? Radius.circular(0)
                      : Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  bottomLeft: controller.currentView == 2
                      ? const Radius.circular(0)
                      : const Radius.circular(15),
                ),
              ),
              height: 35,
              width: (MediaQuery.of(context).size.width) / 3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () => controller.changePageButton(0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15),
                      ),
                    ),
                    height: 32,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.diamond,
                            color: controller.currentView == 0
                                ? AppColor.white
                                : AppColor.gray1,
                            size: 14,
                          ),
                          Text(
                            "المميزات",
                            style: TextStyle(
                              fontSize: 14,
                              color: controller.currentView == 0
                                  ? AppColor.white
                                  : AppColor.gray1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () => controller.changePageButton(1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 5,),
                          Icon(
                            Icons.location_on_sharp,
                            color: controller.currentView == 1
                                ? AppColor.white
                                : AppColor.gray1,
                            size: 14,
                          ),
                          Text(
                            "الموقع",
                            style: TextStyle(
                              fontSize: 14,
                              color: controller.currentView == 1
                                  ? AppColor.white
                                  : AppColor.gray1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () => controller.changePageButton(2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 32,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 5,),
                          Icon(
                            Icons.checklist,
                            color: controller.currentView == 2
                                ? AppColor.white
                                : AppColor.gray1,
                            size: 14,
                          ),
                          Text(
                            "شروط الحجز",
                            style: TextStyle(
                              fontSize: 14,
                              color: controller.currentView == 2
                                  ? AppColor.white
                                  : AppColor.gray1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
