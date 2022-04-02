import 'package:geocode/geocode.dart';

/// FIND ADDRESS BASED ON LATITUDE AND LONGITUDE ///
Future<Address> getAddress() async {
  GeoCode geoCode = GeoCode();

  Address address =
      await geoCode.reverseGeocoding(latitude: 23.1, longitude: 113.2);
  return address;
}
