import 'package:uuid/uuid.dart';

class Exercise {
  final String id;
  final String title;
  final String image;
  final String reps;

  Exercise({required this.title, required this.image, required this.reps})
    : id = const Uuid().v4();
}
