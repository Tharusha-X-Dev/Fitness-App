import 'package:flutter/material.dart';

class TrainingButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const TrainingButton({
    super.key,
    required this.onTap,
    this.title = 'Start Training',
  });

  static const Color buttonColor = Color(0xFF660A0A);

  static const double componentHeight = 80.0;
  static const double bridgeWidth = 20.0;
  static const double bridgeHeight = 8.0;
  static const double innerCircleSize = 46.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Semantics(
      button: true,
      label: title,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: componentHeight,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(componentHeight / 2),
                ),
                child: Center(
                  child: Text(
                    'Start Training',
                    style: TextStyle(
                      fontSize: screenWidth * 0.055,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              width: bridgeWidth,
              height: bridgeHeight,
              color: buttonColor,
            ),

            Container(
              width: componentHeight,
              height: componentHeight,
              decoration: const BoxDecoration(
                color: buttonColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: innerCircleSize,
                  height: innerCircleSize,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                    color: buttonColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
