import 'package:fitness_app/features/workout/models/exercise_model.dart';
import 'package:fitness_app/features/workout/widgets/exercise_tile.dart';
import 'package:flutter/material.dart';

class RoundCard extends StatelessWidget {
  final String title;
  final List<Exercise> exercises;

  const RoundCard({super.key, required this.title, required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ...exercises.map(
            (exercise) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: ExerciseTile(
                image: exercise.image,
                title: exercise.title,
                reps: exercise.reps,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
