import 'dart:convert';

class Client {
  int id;
  String firstName;
  String lastName;
  bool blocked;

  Client({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.blocked,
  });

  factory Client.fromMap(Map<String, dynamic> json) => Client(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    blocked: json["blocked"] == 1);

  Map <String, dynamic> toMap() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "blocked": blocked,
  };
}
