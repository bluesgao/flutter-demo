import 'package:flutter/material.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/image_page.dart';
import 'package:demo/pages/search_page.dart';
import 'package:demo/pages/setting_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // 引入屏幕适配库

/// 应用的主界面组件 , 整个应用的初始根节点
class MainNavigatorBar extends StatefulWidget {
  @override
  _MainNavigatorBarState createState() => _MainNavigatorBarState();
}

/// 该类的父类 State 接受一个泛型
/// 泛型类型是 StatefulWidget 类型 TabNavigator
class _MainNavigatorBarState extends State<MainNavigatorBar> {
  int currentIndex = 0; // 当前选中的底部导航栏索引

  @override
  Widget build(BuildContext context) {
    // 构建页面UI
    return Scaffold(
      body: SafeArea(
        // SafeArea确保内容不会超出屏幕安全区域
        child: IndexedStack(
          // IndexedStack用于保持页面状态，避免页面重建
          index: currentIndex,
          children: [
            HomePage(), // 首页
            ImagePage(), // 热点
            SearchPage(), // 体系
            SettingPage(), // 我的
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        // 修改底部导航栏主题
          data: Theme.of(context).copyWith(
              splashColor: Colors.transparent, // 去除水波纹效果
              highlightColor: Colors.transparent), // 去除点击高亮效果
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // 固定底部导航栏
            selectedLabelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
            // 选中标签样式
            unselectedLabelStyle:
            TextStyle(fontSize: 12.sp, color: Colors.blueGrey),
            // 未选中标签样式
            currentIndex: currentIndex,
            // 当前选中的索引
            items: _barItemList(),
            // 底部导航栏项目列表
            onTap: (index) {
              // 点击切换页面
              currentIndex = index;
              setState(() {}); // 更新页面
            },
          )),
    );
  }

  // 构建底部导航栏项目列表
  List<BottomNavigationBarItem> _barItemList() {
    List<BottomNavigationBarItem> items = []; // 初始化项目列表
    // 添加首页项目
    items.add(BottomNavigationBarItem(
        label: "置顶",
        activeIcon: Image.asset("assets/images/icon_home_selected.png",
            width: 32.r, height: 32.r), // 选中状态的图标
        icon: Image.asset("assets/images/icon_home_grey.png",
            width: 32.r, height: 32.r))); // 未选中状态的图标
    // 添加热点项目
    items.add(BottomNavigationBarItem(
        label: "热点",
        activeIcon: Image.asset("assets/images/icon_hot_key_selected.png",
            width: 32.r, height: 32.r),
        icon: Image.asset("assets/images/icon_hot_key_grey.png",
            width: 32.r, height: 32.r)));
    // 添加体系项目
    items.add(BottomNavigationBarItem(
        label: "体系",
        activeIcon: Image.asset("assets/images/icon_knowledge_selected.png",
            width: 32.r, height: 32.r),
        icon: Image.asset("assets/images/icon_knowledge_grey.png",
            width: 32.r, height: 32.r)));
    // 添加我的项目
    items.add(BottomNavigationBarItem(
        label: "我的",
        activeIcon: Image.asset("assets/images/icon_personal_selected.png",
            width: 32.r, height: 32.r),
        icon: Image.asset("assets/images/icon_personal_grey.png",
            width: 32.r, height: 32.r)));
    return items; // 返回项目列表
  }
}
