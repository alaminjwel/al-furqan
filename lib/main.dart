import 'package:flutter/material.dart';
import './page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Al-Furqan',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Hind Siliguri Semibold',
        textTheme: Theme.of(context).textTheme.apply(
          fontSizeFactor: 1.1,
          fontSizeDelta: 2.0,
        ),
      ),
      home: const Home(title: 'Al Furqan'),
    );
  }
}