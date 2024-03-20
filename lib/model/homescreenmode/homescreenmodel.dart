// To parse this JSON data, do
//
//     final sampleresmode = sampleresmodeFromJson(jsonString);

import 'dart:convert';

Sampleresmode sampleresmodeFromJson(String str) =>
    Sampleresmode.fromJson(json.decode(str));

String sampleresmodeToJson(Sampleresmode data) => json.encode(data.toJson());

class Sampleresmode {
  List<Newspaper>? newspapers;

  Sampleresmode({
    this.newspapers,
  });

  factory Sampleresmode.fromJson(Map<String, dynamic> json) => Sampleresmode(
        newspapers: json["newspapers"] == null
            ? []
            : List<Newspaper>.from(
                json["newspapers"]!.map((x) => Newspaper.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "newspapers": newspapers == null
            ? []
            : List<dynamic>.from(newspapers!.map((x) => x.toJson())),
      };
}

class Newspaper {
  String? lccn;
  String? url;
  String? state;
  String? title;

  Newspaper({
    this.lccn,
    this.url,
    this.state,
    this.title,
  });

  factory Newspaper.fromJson(Map<String, dynamic> json) => Newspaper(
        lccn: json["lccn"],
        url: json["url"],
        state: json["state"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "lccn": lccn,
        "url": url,
        "state": state,
        "title": title,
      };
}
