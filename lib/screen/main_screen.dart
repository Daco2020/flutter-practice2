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
      body: Center(
        // Center 위젯을 사용하여 화면 중앙에 텍스트를 배치
        child: Column(
          // Column 위젯을 사용하여 세로로 위젯을 배치
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('반갑습니다', style: TextStyle(fontSize: 30)),
            const Text('여기는 메인화면입니다'),
            const Text('다 덤벼주세요'),
            const Row(
              // Row 위젯을 사용하여 가로로 위젯을 배치
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('누구부터'),
                Text('혼내줄까?'),
              ],
            ),
            const Row(
              children: [
                Expanded(flex: 2, child: Text("변")),
                Expanded(flex: 1, child: Text("덕")),
                Expanded(flex: 1, child: Text("순")),
                // Expanded 위젯을 사용하여 가로 공간을 꽉 채우기
                // flex 속성을 사용하여 공간 비율을 지정
              ],
            ),
            Container(
                // Container 위젯을 사용하여 내부 공간을 구성
                // 위젯은 사이즈를 지정할 수 없기 때문에 Container 위젯을 사용하여 사이즈를 지정
                width: 300,
                height: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                // color: Colors.amberAccent,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amberAccent),
                child: const Text('컨테이너 안에 텍스트')),
            const SizedBox(
              // SizedBox 위젯을 사용하여 사이즈를 지정
              // 특정 공간이 필요할 때 주로 사용
              width: 100,
              height: 100,
              child: Text("SizedBox 위젯을 사용하여 사이즈를 지정"),
            )
          ],
        ),
      ),
    );
  }
}
