import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/utils/app_strings.dart';
import 'package:fitness_app/screens/workout/data/workout_data.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import '../../../shared/widgets/training_button.dart';
import '../widgets/category_chip.dart';
import '../widgets/round_card.dart';
import '../widgets/workout_header.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WorkoutHeader(
              image: AppImages.lift,
              title: AppStrings.workoutHeader,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CategoryChip(title: 'Cardio'),
                        SizedBox(width: 12),
                        CategoryChip(title: 'Boxing'),
                        SizedBox(width: 12),
                        CategoryChip(title: 'Zumba'),
                        SizedBox(width: 12),
                        CategoryChip(title: 'Hiking'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  TrainingButton(onTap: () {}),

                  const SizedBox(height: 30),

                  RoundCard(
                    title: 'Round 01',
                    exercises: WorkoutData.roundOneExercises,
                  ),

                  const SizedBox(height: 30),

                  RoundCard(
                    title: 'Round 02',
                    exercises: WorkoutData.roundTwoExercises,
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
