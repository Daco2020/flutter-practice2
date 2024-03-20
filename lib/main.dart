import 'package:first_project/screen/main_screen.dart';
import 'package:first_project/screen/splash_screen.dart';
import 'package:first_project/screen/sub_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/main': (context) => const MainScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/sub') {
          String msg = settings.arguments as String;
          return MaterialPageRoute(
              builder: (context) => SubScreen(
                    msg: msg,
                  ));
        } else {
          return MaterialPageRoute(builder: (context) => const MainScreen());
        }
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
