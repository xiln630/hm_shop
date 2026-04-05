// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Cart/index.dart';
import 'package:hm_shop/pages/Catagory/index.dart';
import 'package:hm_shop/pages/Home/index.dart';
import 'package:hm_shop/pages/Mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //定义数据 根据数据进行渲染4个导航
  //一般应用程序的导航是固定的
  final List<Map<String, String>>_tabList = [
    {
      "icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_home_normal.png",//正常显示的图标
      "active_icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_home_active.png",//激活显示的图标
      "text" : "首页",
  },
  {
      "icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_pro_normal.png",//正常显示的图标
      "active_icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_pro_active.png",//激活显示的图标
      "text" : "分类",
  },
  {
      "icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_cart_normal.png",//正常显示的图标
      "active_icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_cart_active.png",//激活显示的图标
      "text" : "购物车",
  },
  {
      "icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_my_normal.png",//正常显示的图标
      "active_icon":"/Users/linxiawen/hm_shop/lib/assets/ic_public_my_active.png",//激活显示的图标
      "text" : "我的",
  },
  ];
  //声明变量
  int _currentIndex = 0;

  List<BottomNavigationBarItem>_getTabBarWidget(){
    return List.generate(_tabList.length,(int index){
      return BottomNavigationBarItem(
        icon: Image.asset(
        _tabList[index]["icon"]!,
        width: 30,
        height: 30,
        ),
        activeIcon: Image.asset(
          _tabList[index]["active_icon"]!,
          width: 30,
          height: 30,
        ),

        label: _tabList[index]["text"],
        
      );
    });
      
  }

  List<Widget>_getChildren(){
    return [HomeView(),CatagoryView(),CartView(),MineView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getChildren(),
       )),
       bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        //index就是当前点击的索引
        onTap: (int index){
          _currentIndex=index;
          setState(() {});
        },
        items: _getTabBarWidget(),
        currentIndex: _currentIndex,
        ),
    );
  }
}