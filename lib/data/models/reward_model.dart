import 'package:flutter/material.dart';

class RewardModel {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final int cost;

  RewardModel({
    required this.description,
    required this.id,
    required this.name,
    required this.icon,
    required this.cost,
  });
}
