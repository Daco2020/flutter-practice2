import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List listHello = ["득현", "덕순", "효빈"];
  TextEditingController idController = TextEditingController();
  // 유저가 인풋창에 입력한 값을 가져오기 위한 컨트롤러

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('메인 화면')),
        body: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '이름을 입력하세요', // placeholder 역할
              ),
            ),
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '아이디를 입력하세요', // placeholder 역할
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(idController.text.toString());
              },
              child: const Text('아이디 가져오기'),
            ),
          ],
        ));
  }
}
