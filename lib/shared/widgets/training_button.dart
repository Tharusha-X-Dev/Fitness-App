import 'package:flutter/material.dart';
import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:fitness_app/core/utils/app_icons.dart';

class TrainingButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const TrainingButton({
    super.key,
    required this.onTap,
    this.title = 'Start Training',
  });

  static const Color buttonColor = Color(0xFF6C0B0B);

  static const double buttonHeight = 40;
  static const double playButtonSize = 40;
  static const double bridgeWidth = 13;
  static const double bridgeHeight = 5;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: buttonHeight,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(title, style: AppTextStyles.trainingButton),
              ),
            ),
          ),

          Container(
            width: bridgeWidth,
            height: bridgeHeight,
            color: buttonColor,
          ),

          Container(
            width: playButtonSize,
            height: playButtonSize,
            decoration: const BoxDecoration(
              color: buttonColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(AppIcons.whitePlay, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
