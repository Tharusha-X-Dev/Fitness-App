import 'package:fitness_app/screens/splash/presentation/screens/startup_screen.dart';
import 'package:go_router/go_router.dart';

import '../../screens/splash/presentation/screens/splash_screen.dart';
import '../../screens/dashboard/screens/dashboard_screen.dart';
import '../../screens/workout/screens/workout_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const StartupScreen()),

    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),

    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),

    GoRoute(
      path: '/workout',
      builder: (context, state) => const WorkoutScreen(),
    ),
  ],
);
