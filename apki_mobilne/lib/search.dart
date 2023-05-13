import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Photos> fetchPhotos() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));

  if (response.statusCode == 200) {
    return Photos.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load photos');
  }
}

class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photos({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<Photos> futurePhotos;

  @override
  void initState() {
    super.initState();
    futurePhotos = fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<Photos>(
            future: futurePhotos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('run command flutter run --web-renderer html');
                return Image.network(
                  snapshot.data!.url,
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
