enum ResultStatus {
  success,
  unauthorized,
  none,
}

enum RequestStatus {
  waiting,
  inProgress,
  success,
  failure,
}

class Result<T> {
  final T? data;
  final int statusCode;

  Result({this.data, required this.statusCode});
  
  ResultStatus get resultStatus {
    switch (statusCode) {
      case 200:
        return ResultStatus.success;
      case 400:
      case 401:
        return ResultStatus.unauthorized;
      default:
        return ResultStatus.none;
    }
  }
}
