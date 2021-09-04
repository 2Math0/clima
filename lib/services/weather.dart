import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '25927f01d92a0ba3b425e0246c115517';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
const celsius = 'metric';


class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getCityWeather(String cityName) async{

    var url = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=$celsius';
    NetworkHelper networkHelper = NetworkHelper(url);

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {

    LocationService location = LocationService();
    await location.getCurrentLocation();

    //calling url
    var url =
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=$celsius';
    NetworkHelper networking = NetworkHelper(url);
    var weatherData = await networking.getData();
    return weatherData;
  }
}
