import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubScreen extends StatelessWidget {
  String msg;

  SubScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('서브 화면'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('서브 화면입니다. $msg'),
          )
        ],
      ),
    );
  }
}
