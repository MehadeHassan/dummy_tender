import 'models/models.dart';

class DummyAPICache {
  final _cache = <String, Profile>{};

  Profile get(String term) => _cache[term];

  void set(String term, Profile result) => _cache[term] = result;

  bool contains(String term) => _cache.containsKey(term);

  void remove(String term) => _cache.remove(term);
}
