// To parse this JSON data, do
//
//     final userExampleModel = userExampleModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserExampleModel userExampleModelFromJson(String str) => UserExampleModel.fromJson(json.decode(str));

String userExampleModelToJson(UserExampleModel data) => json.encode(data.toJson());

class UserExampleModel {
  UserExampleModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  int id;
  String name;
  String username;
  String email;
  Address? address;
  String phone;
  String website;
  Company? company;

  factory UserExampleModel.fromJson(Map<String, dynamic> json) => UserExampleModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    username: json["username"] == null ? null : json["username"],
    email: json["email"] == null ? null : json["email"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    phone: json["phone"] == null ? null : json["phone"],
    website: json["website"] == null ? null : json["website"],
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "address": address == null ? null : address?.toJson(),
    "phone": phone == null ? null : phone,
    "website": website == null ? null : website,
    "company": company == null ? null : company?.toJson(),
  };
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  String street;
  String suite;
  String city;
  String zipcode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"] == null ? null : json["street"],
    suite: json["suite"] == null ? null : json["suite"],
    city: json["city"] == null ? null : json["city"],
    zipcode: json["zipcode"] == null ? null : json["zipcode"],
    geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street == null ? null : street,
    "suite": suite == null ? null : suite,
    "city": city == null ? null : city,
    "zipcode": zipcode == null ? null : zipcode,
    "geo": geo == null ? null : geo?.toJson(),
  };
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
  };
}

class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"] == null ? null : json["name"],
    catchPhrase: json["catchPhrase"] == null ? null : json["catchPhrase"],
    bs: json["bs"] == null ? null : json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "catchPhrase": catchPhrase == null ? null : catchPhrase,
    "bs": bs == null ? null : bs,
  };
}
