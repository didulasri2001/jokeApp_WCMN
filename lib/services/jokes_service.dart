import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/joke.dart';

class JokesService {
  static const String _cacheKey = 'cached_jokes';

  Future<List<Joke>> fetchJokes({bool forceRefresh = false}) async {
    // First try to get cached jokes
    if (!forceRefresh) {
      final cachedJokes = await getCachedJokes();
      if (cachedJokes.isNotEmpty) {
        return cachedJokes;
      }
    }

    try {
      final response = await http.get(
        Uri.parse('https://official-joke-api.appspot.com/random_ten'),
      );

      if (response.statusCode == 200) {
        List<dynamic> jsonList = json.decode(response.body);
        List<Joke> jokes = jsonList
            .take(5)
            .map((json) => Joke.fromJson(json))
            .toList();

        // Cache the jokes
        await _cacheJokes(jokes);
        return jokes;
      } else {
        final cachedJokes = await getCachedJokes();
        if (cachedJokes.isNotEmpty) {
          return cachedJokes;
        }
        throw Exception('Failed to load jokes');
      }
    } catch (e) {
      // On error, return cached jokes
      final cachedJokes = await getCachedJokes();
      if (cachedJokes.isNotEmpty) {
        return cachedJokes;
      }
      throw Exception('No jokes available');
    }
  }

  Future<void> _cacheJokes(List<Joke> jokes) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<String> jokesJson = jokes
          .map((joke) => jsonEncode(joke.toJson()))
          .toList();
      await prefs.setStringList(_cacheKey, jokesJson);
    } catch (e) {
      print('Error caching jokes: $e');
    }
  }

  Future<List<Joke>> getCachedJokes() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<String>? jokesJson = prefs.getStringList(_cacheKey);

      if (jokesJson == null || jokesJson.isEmpty) {
        return [];
      }

      return jokesJson
          .map((jokeStr) => Joke.fromJson(jsonDecode(jokeStr)))
          .toList();
    } catch (e) {
      print('Error getting cached jokes: $e');
      return [];
    }
  }
}