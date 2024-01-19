class Unit {
  int id;
  String unitType;
  int unitNumber;
  double annualPrice;
  int numberOfRooms;
  int numberOfBathrooms;
  int numberOfParkingSpaces;
  int numberOfHalls;
  String locationDescription;
  double latitude;
  double longitude;
  List images;
  String leaseTerms;
  String designingDescription;

  Unit({
    required this.id,
    required this.unitType,
    required this.unitNumber,
    required this.annualPrice,
    required this.numberOfRooms,
    required this.numberOfBathrooms,
    required this.numberOfParkingSpaces,
    required this.numberOfHalls,
    required this.locationDescription,
    required this.latitude,
    required this.longitude,
    required this.images,
    required this.leaseTerms,
    required this.designingDescription,
  });

  String getRoomsDescription() {
    if (numberOfRooms == 0) {
      return 'لا يوجد';
    } else if (numberOfRooms == 1) {
      return ' غرفة';
    } else {
      return '$numberOfRooms غرف';
    }
  }

  String getHallsDescription() {
    if (numberOfHalls == 0) {
      return 'لا يوجد';
    } else if (numberOfHalls == 1) {
      return ' صالة';
    } else {
      return '$numberOfHalls صالون';
    }
  }

  String getBathroomsDescription() {
    if (numberOfBathrooms == 0) {
      return 'لا يوجد';
    } else if (numberOfBathrooms == 1) {
      return ' حمام';
    } else {
      return '$numberOfBathrooms حمامات';
    }
  }
  String getParkingSpacesDescription() {
    if (numberOfParkingSpaces == 0) {
      return 'لا يوجد';
    } else if (numberOfParkingSpaces == 1) {
      return ' موقف سيارات';
    } else {
      return '$numberOfParkingSpaces مواقف سيارات';
    }
  }
}