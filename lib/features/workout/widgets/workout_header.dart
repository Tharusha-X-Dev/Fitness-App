import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutHeader extends StatelessWidget {
  final String image;
  final String title;

  const WorkoutHeader({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image, fit: BoxFit.cover),

          Positioned(
            top: 55,
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
            bottom: 24,
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
