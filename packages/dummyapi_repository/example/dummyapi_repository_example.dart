import 'package:dummyapi_repository/dummyapi_repository.dart';

// 0F8JIqi4zwvb77FGz6Wt
Future<void> main() async {
  var _repo = DummyAPIRepository();
  // var res = await _repo.fetchUsers('20');
  var pro = await _repo.fetchProfile('0F8JIqi4zwvb77FGz6Wt');
  var pdro = await _repo.fetchProfile('0F8JIqi4zwvb77FGz6Wt');
  var pdrcxo = await _repo.fetchProfile('0F8JIqi4zwvb77FGz6Wt');
  // print(res.length);
}
