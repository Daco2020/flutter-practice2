import 'package:flutter/material.dart';

// 시작 화면 (현업에서 주로 사용)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/main');
    });
    return const Scaffold(
      body: Center(
        child: Text("시작화면 입니다. 2초 후 메인화면으로 이동합니다."),
      ),
    );
  }
}
