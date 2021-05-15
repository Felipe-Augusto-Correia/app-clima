import 'package:geolocator/geolocator.dart';

class UserLocation {
  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
}
