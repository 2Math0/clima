import 'package:geolocator/geolocator.dart';
class LocationService{
  double longitude;
  double latitude;

  Future<void> getCurrentLocation()async{
    Position _position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude = _position.latitude;
    longitude = _position.longitude;

  }

}
