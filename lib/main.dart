import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/views/settings.dart';
import 'views/home.dart';
import 'views/welcome_screen.dart';
import 'views/signup_screen.dart';
import 'views/login_screen.dart';
import 'views/about.dart';
import 'views/git.dart';

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
    ),
        home:const WelcomeScreen(),
        routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'registration_screen': (context) => const  RegistrationScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) => const HomeScreen(),
          'settings':(context) => const SettingsScreen(),
          'about':(context) => const AboutScreen(),
          'git_screen':(context) => const GitScreen(),
        },
    );
  }
}
