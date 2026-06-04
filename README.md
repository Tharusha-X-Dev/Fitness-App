# Fitness App 🏋️‍♂️

A Flutter-based fitness application built as part of a mobile application development project. The application provides a modern fitness-focused user interface consisting of a Splash Screen, Dashboard, and Workout Details Screen.

## Features

* Splash Screen with onboarding experience
* Dashboard displaying workout recommendations
* Workout Details Screen with exercise rounds
* Responsive UI design
* State Management using Provider
* Navigation using GoRouter
* Local Storage using SharedPreferences
* Unique identifiers generated using UUID
* Clean and scalable folder structure

## Screens

### Splash Screen

* Fitness-themed onboarding screen
* Start Training button
* First-launch detection using SharedPreferences

### Dashboard Screen

* Personalized greeting section
* Featured workout cards
* Recommended workouts section
* Personal trainer section
* Group classes section

### Workout Details Screen

* Workout overview
* Category chips
* Training action button
* Exercise rounds
* Exercise details

## Project Structure

```text
lib/
│
├── core/
│   ├── router/
│   ├── services/
│   ├── theme/
│   └── utils/
│
├── features/
│   ├── splash/
│   ├── dashboard/
│   └── workout/
│
├── shared/
│   └── widgets/
│
└── main.dart
```

## Technologies Used

* Flutter
* Dart
* Provider
* GoRouter
* SharedPreferences
* UUID

## Packages

```yaml
provider
go_router
shared_preferences
uuid
```

## Navigation Flow

```text
Startup Screen
      │
      ▼
Splash Screen
      │
      ▼
Dashboard Screen
      │
      ▼
Workout Details Screen
```

## Local Storage

SharedPreferences is used to store the first-launch state of the application.

```dart
isFirstLaunch
```

When the application is opened for the first time, the Splash Screen is displayed. Subsequent launches navigate directly to the Dashboard Screen.

## State Management

Provider is used to manage workout-related state and application data.

## Responsive Design

The application follows responsive UI principles using:

* MediaQuery
* Expanded
* Flexible
* Adaptive spacing and sizing

## Setup Instructions

1. Clone the repository

```bash
git clone <repository-url>
```

2. Navigate to the project directory

```bash
cd fitness_app
```

3. Install dependencies

```bash
flutter pub get
```

4. Run the application

```bash
flutter run
```

## Author

Developed using Flutter as part of a mobile application development project.
