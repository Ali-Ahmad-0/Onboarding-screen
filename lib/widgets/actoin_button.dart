import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 62),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 15,
          shadowColor: const Color(0xff92E3A9),

          backgroundColor: const Color(0xff92E3A9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: const Size(305, 58),
        ),
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceIn,
          );
        },
        child: const Center(
          child: Text(
            textAlign: TextAlign.center,
            'Continue',
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
