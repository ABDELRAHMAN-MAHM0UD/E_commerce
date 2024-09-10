class Failuers{
  String errorMsg;
  Failuers({required this.errorMsg});
}

class ServerError extends Failuers{
  ServerError({required super.errorMsg});
}

class NetworkError extends Failuers{
  NetworkError({required super.errorMsg});
}