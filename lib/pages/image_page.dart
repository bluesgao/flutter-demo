import 'package:flutter/material.dart';

/// 图片页面
class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final List _imageUrls = [
    "https://img-blog.csdnimg.cn/20210401205234582.png",
    "https://img-blog.csdnimg.cn/20210401205307863.png",
    "https://img-blog.csdnimg.cn/20210401205249606.png"
  ];

  @override
  Widget build(BuildContext context) {
    /// 界面框架
    return const Scaffold(
      /// 居中组件
      body: Center(
        child: Text("图片页面"),
      ),
    );
  }
}