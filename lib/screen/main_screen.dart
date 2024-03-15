import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('메인 화면')),
      body: const Center(
        // Center 위젯을 사용하여 화면 중앙에 텍스트를 배치
        child: Column(
          // Column 위젯을 사용하여 세로로 위젯을 배치
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('반갑습니다', style: TextStyle(fontSize: 30)),
            Text('여기는 메인화면입니다'),
            Text('다 덤벼주세요'),
          ],
        ),
      ),
    );
  }
}
