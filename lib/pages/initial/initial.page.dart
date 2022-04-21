import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Image.asset(
              "assets/splash_screen/splash_screen_background.png",
              fit: BoxFit.cover,
              height: height,
            ),
            Center(
              child: Lottie.asset(
                'assets/loading/loading.json',
                repeat: true,
                reverse: true,
                height: height / width * 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
