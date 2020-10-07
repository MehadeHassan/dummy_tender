import 'package:dio/dio.dart';
import 'package:dummyapi_client/src/models/models.dart';

class DummyAPIClient {
  DummyAPIClient({
    Dio dio,
  }) : _dio = dio ?? Dio()
          ..options.baseUrl = 'https://dummyapi.io/data/api'
          ..options.headers = {'app-id': '5f796776ead9e8f9ecdebf3a'}
  // ..interceptors.add(
  //   LogInterceptor(
  //     request: true,
  //     requestHeader: true,
  //     responseHeader: false,
  //     requestBody: true,
  //     responseBody: true,
  //   ),
  // )

  ;

  final Dio _dio;

  static Response _response;

  Future<Profile> getAProfile(String userId) async {
    _response = await _dio.get('/user/$userId');
    return Profile.fromJson(_response.data);
  }

  Future<List<User>> getUsers(String limit) async {
    _response = await _dio.get('/user/');
    return Users.fromJson(_response.data).users;
  }
}
