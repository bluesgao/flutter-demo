import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

/// 应用主界面
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// 界面框架
    return const Scaffold(
      /// 居中组件
      body: Center(
        child: Text("主页面"),
      ),
    );
  }
}