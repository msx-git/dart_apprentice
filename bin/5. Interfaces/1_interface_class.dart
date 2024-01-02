void main() {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature("Tashkent");
  print(temperature);
}

abstract class DataRepository {
  double? fetchTemperature(String city);

  factory DataRepository() => FakeWebServer();
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 35.0;
  }
}
