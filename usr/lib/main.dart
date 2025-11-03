import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/trade_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rubiktrade Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF161A25),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F2630),
          elevation: 0,
        ),
      ),
      home: const TradeScreen(),
    );
  }
}
