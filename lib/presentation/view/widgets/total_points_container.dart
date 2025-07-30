import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class TotalPointsContainer extends StatelessWidget {
  const TotalPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsManager.mainColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.monetization_on,
                  color: Colors.orange,
                  size: 40,
                ),
              ),
              horizontalSpace(context, 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total Points',
                    style: TextStyle(
                      color: ColorsManager.whiteShade,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '400 pts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '10 points = 1 EGP',
                    style: TextStyle(
                      color: ColorsManager.whiteShade,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
