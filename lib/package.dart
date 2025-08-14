import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Package extends StatelessWidget {
  final String? imagePath, heading, subTitle;
  const Package({super.key, this.imagePath, this.subTitle, this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, right: 32, left: 32),
          child: SvgPicture.asset(imagePath!),
        ),
        Text(
          heading!,
          style: const TextStyle(fontSize: 31, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 24),
        Text(
          textAlign: TextAlign.center,
          subTitle!,
          style: const TextStyle(
            height: 1.5,
            fontSize: 18,
            color: Color(0XFF949494),
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(child: const SizedBox(height: 38, width: double.infinity)),
      ],
    );
  }
}
