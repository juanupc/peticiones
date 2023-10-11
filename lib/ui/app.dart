import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones/ui/pages/home/home.dart';
import 'package:peticiones/ui/pages/user/list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/listuser' : (context) => const ListUser(),
      },
    );
  }
}
