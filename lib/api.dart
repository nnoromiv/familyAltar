import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

final apiUrl = dotenv.env['API_URL'];
final apiKey = dotenv.env['API_KEY'];

Future<Map<String, dynamic>> fetchBooks(version) async {
  final uri = Uri.parse('$apiUrl/$version/books');

  final headers = {
    'api-key': apiKey!,
  };

  final response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    return { 'data': 'Failed to load data'};
  }
}

Future<Map<String, dynamic>> fetchChapters(version, book) async {
  final uri = Uri.parse('$apiUrl/$version/books/$book/chapters');

  final headers = {
    'api-key': apiKey!,
  };

  final response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    return { 'data': 'Failed to load data'};
  }
}

Future<Map<String, dynamic>> fetchChapter(version, id) async {
  final uri = Uri.parse('$apiUrl/$version/chapters/$id');

  final headers = {
    'api-key': apiKey!,
  };

  final response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    return { 'data': 'Failed to load data'};
  }
}

Future<Map<String, dynamic>> fetchVerses(version, chapter) async {
  final uri = Uri.parse('$apiUrl/$version/chapters/$chapter/verses');

  final headers = {
    'api-key': apiKey!,
  };

  final response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    return { 'data': 'Failed to load data'};
  }
}

Future fetchVerse(version, id) async {
  final uri = Uri.parse('$apiUrl/$version/verses/$id');

  final headers = {
    'api-key': apiKey!,
  };

  final response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    return { 'data': 'Failed to load data'};
  }
}
