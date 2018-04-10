part of client;

abstract class IConverter
{
  dynamic toJson(dynamic value);
  T fromJson<T>(dynamic value, T factory());
}

abstract class IServiceConfig
{
  String baseUrl;
  Map<String, Function> types;
}

