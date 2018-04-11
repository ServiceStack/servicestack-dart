part of client;

class IServiceClient {
  String baseUrl;
}

class JsonServiceClient implements IServiceClient {
  String baseUrl;
  String replyBaseUrl;
  String oneWayBaseUrl;
  String mode;
  String credentials;
  Map<String,String> headers;

  JsonServiceClient([this.baseUrl="/"]) {
    replyBaseUrl = combinePaths([baseUrl, "json", "reply"]) + "/";
    oneWayBaseUrl = combinePaths([baseUrl, "json", "oneway"]) + "/";
    mode = "cors";
    credentials = "include";
    headers = {
      "Content-Type": "application/json"
    };
  }

  Future<T> get<T>(IReturn<T> request, [Map<String,dynamic> args]) {
    return send("GET", request, args);
  }

  Future<T> send<T>(String httpMethod, IReturn<T> request, [Map<String,dynamic> args]) {
    return null;   
  }
}
