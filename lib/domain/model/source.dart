// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Source {
  final String id;
  final String name;
  Source({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      id: (map['id'] ?? "") as String,
      name: (map['name'] ?? "") as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Source.fromJson(String source) =>
      Source.fromMap(json.decode(source) as Map<String, dynamic>);
}
