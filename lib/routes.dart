import 'package:quizzer/screens/about/about.dart';
import 'package:quizzer/screens/home/home.dart';
import 'package:quizzer/screens/login/login.dart';
import 'package:quizzer/screens/profile/profile.dart';
import 'package:quizzer/screens/topics/topics.dart';

var appRoutes = {
  "/": (context) => const HomeScreen(),
  "/login": (context) => const LoginScreen(),
  "/profile": (context) => const ProfileScreen(),
  "/topics": (context) => const TopicsScreen(),
  "/about": (context) => const AboutScreen(),
};
