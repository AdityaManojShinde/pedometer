import 'package:go_router/go_router.dart';
import 'package:pedometer/UI/screens/home_screen.dart';
import 'package:pedometer/UI/screens/main_screen.dart';

final GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'main',
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
