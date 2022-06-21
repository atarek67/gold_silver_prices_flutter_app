import 'package:dio/dio.dart';

class DioHelper{
  static Dio? dio;

  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: 'https://www.goldapi.io/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getdata(String url){
    dio!.options.headers={
      'x-access-token':'goldapi-9aee4itl4mvydth-io'
    };

    return dio!.get(url);
  }
}