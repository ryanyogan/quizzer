import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quizzer/firebase_options.dart';
import 'package:quizzer/routes.dart';
import 'package:quizzer/theme.dart';
import 'package:quizzer/widgets/bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initApp = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initApp,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text(
            "Error",
            textDirection: TextDirection.ltr,
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            routes: appRoutes,
            theme: appTheme,
          );
        }

        return const Text(
          "Loading...",
          textDirection: TextDirection.ltr,
        );
      },
    );
  }
}
