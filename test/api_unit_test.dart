import 'package:brawn_practical_task/api/post_api.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Fetch features return list of features', () async {
    bool complete = false;
    var fetch = await PostApi().getPosts();
    if (fetch != null) {
      complete = true;
    }
    expect(complete, true);
  });

}