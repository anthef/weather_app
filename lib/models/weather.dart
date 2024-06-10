class Weather {
  final String description;
  final String icon;
  final double temperature;
  final int pressure;
  final int humidity;
  final double windSpeed;
  final int windDegree;
  final String cityName;

  Weather({
    required this.description,
    required this.icon,
    required this.temperature,
    required this.pressure,
    required this.humidity,
    required this.windSpeed,
    required this.windDegree,
    required this.cityName,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
      temperature: json['main']['temp'],
      pressure: json['main']['pressure'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'],
      windDegree: json['wind']['deg'],
      cityName: json['name'],
    );
  }
}
