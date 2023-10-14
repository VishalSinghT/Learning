import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen
 extends StatelessWidget {
  const SplashScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Lottie.network("https://app.lottiefiles.com/share/d91b5cf3-09f0-4e58-ac9a-3a5342244479")
                    ),
          ],
        ),
      )
    );
  }
}
