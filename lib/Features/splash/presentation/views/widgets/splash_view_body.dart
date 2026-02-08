import 'package:bookly1/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly1/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin  توقيت او عداد
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
    animationController.dispose();  // مهمه لعدم استهلاك تادتا
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}


