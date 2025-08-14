import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';
import 'package:onboarding/widgets/actoin_button.dart';
import 'package:onboarding/widgets/page_indecator.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            children: [screens[0], screens[1], screens[2]],
          ),
        ),
        PageIndecator(controller: controller),
        ActionButton(controller: controller),
      ],
    );
  }
}

