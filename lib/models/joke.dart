class Joke {
  final String id;
  final String setup;
  final String punchline;

  Joke({required this.id, required this.setup, required this.punchline});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json['id']?.toString() ?? '',
      setup: json['setup'] ?? '',
      punchline: json['punchline'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'setup': setup,
      'punchline': punchline,
    };
  }
}