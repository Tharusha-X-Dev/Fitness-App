import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutHeader extends StatelessWidget {
  final String image;
  final String title;

  const WorkoutHeader({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final double headerHeight = math.min(430, media.size.height * 0.45);

    return SizedBox(
      height: headerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image, fit: BoxFit.cover),

          Positioned(
            top: media.padding.top + 12,
            left: 16,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),

          Positioned(
            left: 24,
            bottom: media.padding.bottom + 24,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
