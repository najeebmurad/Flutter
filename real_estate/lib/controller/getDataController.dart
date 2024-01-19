import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/Unit.dart';
String _basicAuth = 'Basic ${base64Encode(utf8.encode(
    'wifiCharge:774&kjfJJfdjh057KM5'))}';
Map<String, String> myheaders = {
  'authorization': _basicAuth
};
 String basicAuth = 'Basic ${base64Encode(utf8.encode(
    'api:1234'))}';
Future<List<Unit>> fetchUnits() async {
  final response = await http.get(Uri.parse('https://wificharge.000webhostapp.com/real_estate/getData.php'),headers: {'authorization': basicAuth});
  if (response.statusCode == 200) {
    final List<dynamic> unitsJson = json.decode(response.body);
    return unitsJson.map((unitJson) => Unit(
      id: int.parse(unitJson['id']) ,
      unitType: unitJson['unitType'],
      unitNumber:int.parse(unitJson['unitNumber']) ,
      annualPrice: double.parse(unitJson['annualPrice']),
      numberOfRooms: int.parse(unitJson['numberOfRooms']),
      numberOfHalls: int.parse(unitJson['numberOfHalls']),
      numberOfBathrooms: int.parse(unitJson['numberOfBathrooms']),
      numberOfParkingSpaces: int.parse(unitJson['numberOfParkingSpaces']),
      locationDescription: unitJson['locationDescription'],
      latitude: double.parse(unitJson['latitude']),
      longitude: double.parse(unitJson['longitude']),
      leaseTerms: unitJson['leaseTerms'],
      designingDescription: unitJson['designingDescription'],
      images: List<String>.from(unitJson['images'].map((image) => image['image'])),
    )).toList();
  } else {

    throw Exception('Failed to fetch units');
  }
}