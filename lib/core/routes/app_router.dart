import 'package:go_router/go_router.dart';
import 'package:login/features/home/home_screen.dart';
import 'package:login/features/login/login_screen.dart';
import 'package:login/features/register/register_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/', builder: (context, state) => HomeScreen(),)
  ],
);
