import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List listHello = ["득현", "덕순", "효빈"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('메인 화면')),
      body: ListView.builder(
        // 리스트 목록 UI 생성, itemCount에 지정된 숫자만큼 반복한다.
        itemCount: listHello.length,
        itemBuilder: (BuildContext context, int index) {
          var count = index + 1;
          return ListTile(
            title: Text('${listHello[index]}'),
            subtitle: Text('서브 제목 $count'),
          );
        },
      ),
    );
  }
}
