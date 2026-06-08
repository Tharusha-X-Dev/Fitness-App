import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:fitness_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ExploreBanner extends StatelessWidget {
  final String imagePath;
  final String title;

  const ExploreBanner({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.black.withValues(alpha: 0.35),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.exploreBannerTitle,
              ),
              const SizedBox(height: 10),
              Text(
                AppStrings.exploreBannerSubtitle,
                style: AppTextStyles.exploreBannerSubtitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
