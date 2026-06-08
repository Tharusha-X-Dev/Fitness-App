import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final Color buttonColor;

  const WorkoutCard({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final double cardWidth = (media.size.width - 70) / 2;

    return Container(
      height: 165.0,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 91.0,
            height: 22.0,
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Start', style: AppTextStyles.workoutCardButtonText),
            ),
          ),
        ),
      ),
    );
  }
}
