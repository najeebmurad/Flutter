import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate/controller/NavController.dart';
import 'package:real_estate/controller/UnitController.dart';
import '../../app/AppColor.dart';
import '../widget/GoogleMap.dart';
import '../widget/nav.dart';

class UnitDetails extends StatelessWidget {
  const UnitDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavController controller = Get.put(NavController());
    UnitController unitController = Get.put(UnitController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.offwhite,
        elevation: 0,
        title: const Text(
          "تفاصيل الوحدة",
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.gold, borderRadius: BorderRadius.circular(100)),
            margin: const EdgeInsets.all(15),
            child: const Icon(
              Icons.arrow_back,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.offwhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: PageView(
                      children: unitController.unit.images.isEmpty
                          ? [Image.asset("assets/images/notFound.png")]
                          : [
                              ...List.generate(
                                  unitController.unit.images.length,
                                  (index) => Image.network(unitController
                                      .unit.images[index]
                                      .toString()))
                            ],
                    ),
                  ),
                  const Positioned(
                    left: 4,
                    top: -4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.bookmark,
                        color: AppColor.lightgray,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 25,
                    child: Image.asset(
                      "assets/images/img2.png",
                      width: 40,
                      height: 38,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "نوع الوحدة: ${unitController.unit.unitType}",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: Text(
                      "الإيجار السنوي",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "رقم الوحدة: ${unitController.unit.unitNumber}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.gray,
                          fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        unitController.unit.annualPrice.toStringAsFixed(2),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.gold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        "ر.س",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.gray,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              GetBuilder<NavController>(builder: (controller) {
                return Nav();
              }),
              Container(
                height: Get.height /3,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.changePage,
                  children: [
                    ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "شقة انيقة للإيجار",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/room.png",
                                    width: 24,
                                    height: 19.2,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    unitController.unit.getRoomsDescription(),
                                    style: const TextStyle(
                                        color: AppColor.black10, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/salon.png",
                                    width: 24,
                                    height: 19.2,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    unitController.unit.getHallsDescription(),
                                    style: const TextStyle(
                                        color: AppColor.black10, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/bathroom.png",
                                    width: 24,
                                    height: 19.2,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    unitController.unit.getBathroomsDescription(),
                                    style: const TextStyle(
                                        color: AppColor.black10, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/car.png",
                                    width: 24,
                                    height: 19.2,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    unitController.unit
                                        .getParkingSpacesDescription(),
                                    style: const TextStyle(
                                        color: AppColor.black10, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          unitController.unit.designingDescription,
                          style: const TextStyle(
                              color: AppColor.black, fontSize: 14),
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "الموقع",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          unitController.unit.locationDescription,
                          style: const TextStyle(
                              color: AppColor.black, fontSize: 14),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(0, 4)),
                            ],
                          ),
                          child: MapSample(
                            latLng: LatLng(unitController.unit.latitude,
                                unitController.unit.longitude),
                          ),
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "شروط الإستأجار",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          unitController.unit.leaseTerms,
                          style: const TextStyle(color: AppColor.black, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
