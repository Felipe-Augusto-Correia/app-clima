import 'package:geolocator/geolocator.dart';

class UserLocation {
  double latitude;
  double longitude;

  UserLocation({this.latitude, this.longitude});

  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
}
