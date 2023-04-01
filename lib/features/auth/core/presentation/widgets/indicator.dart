import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../../../../core/presentation/core_constants.dart';

class Indicator extends StatelessWidget {
  Indicator({required this.carouselIndex, Key? key}) : super(key: key);

  int carouselIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: images.length,
      position: carouselIndex.toDouble(),
      decorator: const DotsDecorator(
        size: Size.square(11.0),
        activeSize: Size(13.0, 13.0),
        activeColor: KLightBlue,
        shape: CircleBorder(),
        activeShape: CircleBorder(),
      ),
    );
  }
}
