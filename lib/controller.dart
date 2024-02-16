import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

class PostController {
  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = jsonDecode(response.body);
      return responseData.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
