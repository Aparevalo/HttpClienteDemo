import 'package:flutter/material.dart';
import 'model.dart';
import 'controller.dart';

class HttpDemoView extends StatefulWidget {
  @override
  _HttpDemoViewState createState() => _HttpDemoViewState();
}

class _HttpDemoViewState extends State<HttpDemoView> {
  final PostController _postController = PostController();
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    final posts = await _postController.fetchPosts();
    setState(() {
      _posts = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpClienteDemo'),
      ),
      body: ListView.builder(
        itemCount: _posts.length > 5 ? 5 : _posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_posts[index].title),
          );
        },
      ),
    );
  }
}
