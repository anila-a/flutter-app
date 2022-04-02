import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dev_case_anila/models/weather_model.dart';
import 'package:flutter_dev_case_anila/constants/api_path.dart';

class WeatherAPI {
  Future<WeatherModel> getWeather() async {
    var client = http.Client(); // HTTP client
    var response =
        await client.get(Uri.parse(Path.path)); // Store GET HTTP response
    var weatherModel = null; // Declare model, initially null, handle later

    try {
      if (response.statusCode == HttpStatus.ok) {
        // Check if the response was successful
        var jsonString = response.body;
        var jsonMap =
            json.decode(jsonString); // Convert json string to json map
        weatherModel = WeatherModel.fromJson(jsonMap); // Assign data to model
      }
    } catch (e) {
      return weatherModel; // Returns null, handled later on
    }

    return weatherModel;
  }
}
