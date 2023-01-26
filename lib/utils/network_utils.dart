// import 'dart:async';
// import 'dart:convert';
// import 'dart:io' as Io;
// import 'package:dio/dio.dart';
// import 'package:qr_code_2/const/const_urls.dart';
// import 'package:qr_code_2/models/api_model.dart';
// import 'package:qr_code_2/utils/utilities.dart';
//
// class NetworkUtils {
//   var dio = Dio();
//
//   Future<ApiResponse> post(String url, FormData formData,
//       {bool isFormData = false}) async {
//     Response res;
//     try {
//       String mainUrl = ConstantUrl.base_url + url;
//
//       res = await dio.post(
//         mainUrl,
//         data: formData,
//         options: Options(headers: networkHeader()),
//       );
//
//       return _processData(res);
//     } on Io.SocketException catch (_) {
//       return ApiResponse(msg: ConstantMessage.internetErrMsg);
//     } catch (ee, st) {
//       return _handlerError('POST', ee, st);
//     }
//   }
//
//   Future<ApiResponse> get(String url, {Map<String, dynamic>? queryData}) async {
//     Response res;
//     try {
//       String mainUrl = ConstantUrl.base_url + url;
//
//       res = await dio.get(mainUrl, options: Options(headers: networkHeader()));
//
//       return _processData(res);
//     } on Io.SocketException catch (_) {
//       return ApiResponse(msg: ConstantMessage.internetErrMsg);
//     } catch (ee, st) {
//       return _handlerError('GET', ee, st);
//     }
//   }
//
//   Map<String, dynamic> networkHeader() {
//     return {"Accept-Language": "en"};
//   }
//
//   ApiResponse _processData(Response res, {String errorMsg = ""}) {
//     try {
//       Map<String, dynamic> r;
//       if (res != null) {
//         r = Map<String, dynamic>.from(json.decode(res.data));
//         String msg = Utilities.parseString(r['message']);
//         dynamic dd = r.containsKey("body") ? r['body'] ?? {} : {};
//
//         dynamic d;
//         if (dd is List) {
//           d = dd;
//         } else if (dd is Map) {
//           d = Map<String, dynamic>.from(dd);
//         } else {
//           d = dd;
//         }
//         return ApiResponse(
//           msg: msg,
//           data: d,
//         );
//       } else {
//         return ApiResponse(msg: ConstantMessage.unknownErrMsg);
//       }
//     } catch (_) {
//       return ApiResponse(msg: errorMsg ?? ConstantMessage.unknownErrMsg);
//     }
//   }
//
//   ApiResponse _handlerError(String httpMethod, dynamic ee, StackTrace st) {
//     return _processData(ee.response, errorMsg: ee?.message);
//   }
// }
