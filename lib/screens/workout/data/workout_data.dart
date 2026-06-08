import '../../../core/utils/app_images.dart';
import '../models/exercise_model.dart';

class WorkoutData {
  static final List<Exercise> roundOneExercises = List.unmodifiable([
    Exercise(title: 'Side Stretch Left', reps: '3x', image: AppImages.workout),
    Exercise(title: 'Side Stretch Right', reps: '3x', image: AppImages.workout),
  ]);

  static final List<Exercise> roundTwoExercises = List.unmodifiable([
    Exercise(title: 'Side Stretch Left', reps: '3x', image: AppImages.workout),
  ]);
}
