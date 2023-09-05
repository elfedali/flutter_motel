import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_motel/utils/api.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: FutureBuilder(
          future: fetchAboutInfo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final aboutInfo = snapshot.data;
              return Column(
                children: [
                  Text(aboutInfo?['app_name']),
                  Text(aboutInfo?['description']),
                ],
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Failed to fetch about info'),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

Future<Map<String, dynamic>> fetchAboutInfo() async {
  var response = await http.get(Uri.parse(Api.getFullUrl(Api.about)));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch about info');
  }
}
