import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndecator extends StatelessWidget {
  const PageIndecator({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 66),
      child: SmoothPageIndicator(
        controller: controller,
        count: screens.length,
        effect: ScrollingDotsEffect(
          spacing: 20,
          dotHeight: 8,
          dotWidth: 8,
          activeDotColor: Color(0xff92E3A9),
          dotColor: const Color.fromARGB(255, 205, 211, 214),
        ),
      ),
    );
  }
}
