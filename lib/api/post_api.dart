import 'package:http/http.dart';

import '../models/models/post_model.dart';


class PostApi {
  Future<PostModel> getPosts() async {
    String endpoint = 'https://www.reddit.com/r/FlutterDev.json';
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      return postModelFromJson(response.body);
    } else {
      throw Exception('Ups..something went wrong, try again later.');
    }
  }
}