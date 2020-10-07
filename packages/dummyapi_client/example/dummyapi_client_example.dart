import 'package:dummyapi_client/dummyapi_client.dart';

Future<void> main() async {
  var _client = DummyAPIClient();
  var user = await _client.getAProfile('0F8JIqi4zwvb77FGz6Wt');
  print(user.location);

  //  var user = await _client.getUsers('0F8JIqi4zwvb77FGz6Wt');
  // print(user[0].picture);
}
