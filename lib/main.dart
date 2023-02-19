import 'package:flutter/material.dart';
import 'pages/forgot_password_page.dart';
import 'pages/signup_page.dart';
import 'pages/login_page.dart';
import 'pages/verification_page.dart';

import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //route configuration
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'signup',
            builder: (BuildContext context, GoRouterState state) {
              return const RegistrationApp();
            },
          ),
          GoRoute(
            path: 'forgotPassword',
            builder: (BuildContext context, GoRouterState state) {
              return const ForgotPasswordPage();
            },
          ),
          GoRoute(
            path: 'verification',
            builder: (BuildContext context, GoRouterState state) {
              return const VerificationPage();
            },
          ),
        ],
      ),
    ],
  );

  // starting point of app
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'Login App',
    );
  }
}
