import 'package:fitness_app/core/services/local_storage_service.dart';
import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../shared/widgets/training_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.splashBg,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withValues(alpha: 0.45),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),

                  Text(
                    'Join the Fitness\nClub',
                    style: AppTextStyles.splashTitle,
                  ),

                  const SizedBox(height: 10),

                  TrainingButton(
                    onTap: () async {
                      await LocalStorageService().setFirstLaunchDone();

                      if (context.mounted) {
                        context.go('/dashboard');
                      }
                    },
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
