import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:fitness_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../widgets/explore_banner.dart';
import '../widgets/recommended_card.dart';
import '../widgets/workout_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const List<String> recommendedImages = [
    AppImages.bend,
    AppImages.run,
    AppImages.stretch,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              Text(
                'Hello ${AppStrings.userName},\n${AppStrings.dashboardGreeting}',
                style: AppTextStyles.dashboardGreeting,
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  WorkoutCard(
                    imagePath: AppImages.cycling,
                    buttonColor: AppColors.primary,
                    onTap: () {
                      context.push('/workout');
                    },
                  ),

                  const SizedBox(width: 20),

                  WorkoutCard(
                    imagePath: AppImages.pushups,
                    buttonColor: const Color(0xFFF26B6B),
                    onTap: () {
                      context.push('/workout');
                    },
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Text(
                AppStrings.recommendedTitle,
                style: AppTextStyles.recommendedTitle,
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedImages.length,
                  itemBuilder: (context, index) {
                    return RecommendedCard(imagePath: recommendedImages[index]);
                  },
                ),
              ),

              const SizedBox(height: 40),

              ExploreBanner(
                imagePath: AppImages.meditation,
                title: AppStrings.trainerTitle,
              ),

              const SizedBox(height: 30),

              ExploreBanner(
                imagePath: AppImages.warmUp,
                title: AppStrings.groupTitle,
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
