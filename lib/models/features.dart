import 'package:flutter/material.dart';

class Features {
  Features({
    required this.imageUrl,
    required this.title,
    required this.id,
  });
  final String id;
  final String title;
  final Icon imageUrl;
}
