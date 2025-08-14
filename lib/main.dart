import 'package:flutter/material.dart';
import 'package:onboarding/home_page.dart';

void main() {
  runApp(HomePage());
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePageBody()
      ),
    );
  }
}
