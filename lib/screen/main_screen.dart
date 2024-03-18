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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('메인 화면')),
        body: Column(
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '아이디를 입력하세요', // placeholder 역할
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // print(idController.text.toString());
                setState(() {
                  // setState로 widget의 상태를 변경.
                  name = idController.text.toString();
                });
              },
              child: const Text('아이디 가져오기'),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 30),
            )
          ],
        ));
  }
}
