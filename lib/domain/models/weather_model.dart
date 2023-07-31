class WeatherModel {
  const WeatherModel({
    required this.temperature,
    required this.wind,
    required this.cloud,
    required this.humidity,
    required this.condition,
    required this.city,
    required this.country,
    required this.localTime,
    required this.icon,
  });

  final double temperature;
  final double wind;
  final int cloud;
  final int humidity;
  final String condition;
  final String city;
  final String country;
  final String localTime;
  final String icon;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temperature = json['current']['temp_c'] + 0.0,
        wind = json['current']['wind_mph'] + 0.0,
        cloud = json['current']['cloud'],
        humidity = json['current']['humidity'],
        condition = json['current']['condition']['text'],
        city = json['location']['name'],
        country = json['location']['country'],
        localTime = json['location']['localtime'].toString(),
        icon = json['current']['condition']['icon'];
}
