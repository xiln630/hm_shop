import 'package:flutter/material.dart';
import 'package:hm_shop/main.dart';
import 'package:hm_shop/pages/Login/index.dart';
import 'package:hm_shop/pages/Main/index.dart';
//返回app根级组件 
Widget getRootWidget(){
  return MaterialApp(
    //命名路由
    initialRoute:"/",
    routes: getRootRoutes()
  );
}
//返回改app的路由配置
Map<String, Widget Function(BuildContext)> getRootRoutes(){
  return{
    "/":(context) => MainPage(),//主页
    "/login":(context) => LoginPage()//登陆路由 
  };
}