import 'package:dio/dio.dart';

class DioSettings {
  static final mainServer = "http://api.openweathermap.org";
  static final appid = "5452d8bda19e96bbe4ab066cddd371f8";
  static final units = "metric";
  static final daily = "daily,current";
  static double lat;
  static double lon;
  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));
  initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(InterceptorsWrapper(onResponse: (response) {
      if (response.statusCode == 204) {
        throw DioError(
          error: "Отсутствуют данные",
          response: Response(
            statusCode: 400,
            request: response.request,
          ),
        );
      } else if (response.statusCode == 200 && response.data.isEmpty) {
        throw DioError(
          error: "Город введен не правильно",
          response: Response(
            statusCode: 400,
            request: response.request,
          ),
        );
      }
    }, onError: (DioError error) async {
      print("=" * 10 + "=" * 10);
      print(error);
      if (error.type == DioErrorType.CONNECT_TIMEOUT) {
        throw DioError(
          error: "Сервер не отвечает попробуйте еще раз",
          response: Response(
            statusCode: 400,
            request: error.request,
          ),
        );
      } else if (error.message.contains("SocketException:")) {
        throw DioError(
          error: "Отсутствует интернет соединение",
          response: Response(
            statusCode: 400,
            request: error.request,
          ),
        );
      }
      // else if (error.response.statusCode == 401) {
      //   ErrorHandler().showError(
      //     DioError(error: ErrorHandlerType.auth),
      //   );
      // }
      return error;
    }));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }

  DioSettings() {
    initialSettings();
  }
}
