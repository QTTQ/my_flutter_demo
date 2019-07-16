import 'package:dio/dio.dart';
import "dart:async";
import 'dart:io';
import '../config/servcie_url.dart';

Future requestHttpFunc(String method, String url, {Map formData}) async {
  print("------->>>>:$formData");
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    if (formData == null) {
      response = await dio.get(servicePath[url]);
    } else if (method == "get") {
      response = await dio.post(servicePath[url], queryParameters: formData);
    } else if (method == "post") {
      response = await dio.put(servicePath[url], data: formData);
    }
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw ("端口异常------------------>");
    }
  } catch (e) {
    print('ERROR:----------------->$e');
    return Map();
  }
}
