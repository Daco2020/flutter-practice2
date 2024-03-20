import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController idController = TextEditingController();
  // 유저가 인풋창에 입력한 값을 가져오기 위한 컨트롤러

  String name = "안녕하세요!";
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                // Navigator.pushNamed 는 생성하면서 이동
                Navigator.pushNamed(context, '/sub', arguments: "데이터 전달");
                // Navigator.pushReplacementNamed 는 내 화면을 교체하여 이동
                // Navigator.pushReplacementNamed(context, '/sub');
              },
              child: const Text('서브 화면으로 이동')),
        ],
      ),
      drawer: Drawer(
        // Drawer 는 왼쪽에서 오른쪽으로 슬라이드 되는 메뉴 위젯
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text('Drawer 헤더'),
            ),
            ListTile(
              title: const Text('홈 화면'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('메인 화면'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
