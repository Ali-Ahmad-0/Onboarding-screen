import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package.dart';

void main() {
  runApp(HomePage());
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Package> screens = const [
    Package(
      heading: 'Playback',
      subTitle:
          'Pristine sound quality for absolute \nclarity in audio playback.',
      imagePath: 'assets/images/Frame.svg',
    ),
    Package(
      heading: 'Music For You',
      subTitle:
          'Curated weekly playlists tailored to \nyour music listening history.',
      imagePath: 'assets/images/Frame (2).svg',
    ),
    Package(
      heading: 'Listen Anywhere',
      subTitle:
          'Favorite tunes follow, anytime, anywhere. Worry-free offline playback for your journey.',
      imagePath: 'assets/images/Frame (1).svg',
    ),
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: [screens[0], screens[1], screens[2]],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 66),
              child: SmoothPageIndicator(
                controller: controller,
                count: screens.length,
                effect: const ScrollingDotsEffect(
                  spacing: 20,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Color(0xff92E3A9),
                  dotColor: Color(0xffECEBED),
                ),
              ),
            ),
            Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
