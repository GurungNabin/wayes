import 'package:flutter/material.dart';

enum Categories {
  heritage,
  nature,
  adventure,
  religion,
  food,
  leisure,
  education,
  hidenGems,
}

class Category {
  final String title;
  final Color color;

  const Category(this.title, this.color);
}
