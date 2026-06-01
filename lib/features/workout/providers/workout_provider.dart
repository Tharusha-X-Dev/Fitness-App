import 'package:flutter/material.dart';

class WorkoutProvider extends ChangeNotifier {
  String selectedWorkout = '';

  void selectWorkout(String workout) {
    selectedWorkout = workout;
    notifyListeners();
  }
}