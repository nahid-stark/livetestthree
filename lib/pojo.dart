class Pojo{
  String? city;
  String? temperature;
  String? condition;
  String? humidity;
  String? windSpeed;
  Pojo({required this.city, required this.temperature, required this.condition, required this.humidity, required this.windSpeed});
  Pojo.fromJson(Map<String, dynamic> json){
  city = json["city"] ?? "";
  temperature = json["temperature"].toString();
  condition = json["condition"];
  humidity = json["humidity"].toString();
  windSpeed = json["windSpeed"].toString();
  }
}