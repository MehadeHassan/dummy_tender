import 'package:dummyapi_client/dummyapi_client.dart';

class DummyAPIRepository {
  DummyAPIRepository({DummyAPIClient client, DummyAPICache cache})
      : _cache = cache ?? DummyAPICache(),
        _client = client ?? DummyAPIClient();

  final DummyAPICache _cache;
  final DummyAPIClient _client;

  Future<Profile> fetchProfile(String userId) async {
    // if (_cache.contains(userId)) {
    //   print('from Cache');
    //   return _cache.get(userId);
    // } else {
    //   print('from API');
    //   final result = await _client.getAProfile(userId);
    //   _cache.set(userId, result);
    //   return result;
    // }

    return await _client.getAProfile(userId);
  }

  Future<List<User>> fetchUsers([String limit]) async {
    return await _client.getUsers(limit);
  }
}
