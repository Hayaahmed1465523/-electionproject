// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class CandDataModel {
  int? userId;
  int? id;
  String? title;

  CandDataModel({
    this.userId,
    this.id,
    this.title,
  });

  CandDataModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}


