import 'package:dropme/data/models/reward_model.dart';
import 'package:flutter/material.dart';

class RewardService {
  static Future<List<RewardModel>> fetchRewards() async {
    await Future.delayed(const Duration(milliseconds: 500)); 
    return [
      RewardModel(
        id: '1',
        name: 'Free Coffee',
        icon: Icons.local_cafe,
        cost: 100,
        description: 'This reward helps you go green and save money! Redeem now and enjoy the benefits.'
      ),
      RewardModel(
        id: '2',
        name: 'Health Voucher',
        icon: Icons.favorite,
        cost: 300,
        description: 'This reward helps you go green and save money! Redeem now and enjoy the benefits.'
      ),
      RewardModel(
        id: '3',
        name: 'Shopping Discount',
        icon: Icons.shopping_bag,
        cost: 250,
        description: 'This reward helps you go green and save money! Redeem now and enjoy the benefits.'
      ),
      RewardModel(
        id: '4',
        name: 'Ride Credit',
        icon: Icons.directions_car,
        cost: 150,
        description: 'This reward helps you go green and save money! Redeem now and enjoy the benefits.'
      ),
    ];
  }
}
