import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide3 extends FlutterDeckSlideWidget {
  const Slide3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'インタラクティブアニメーションとは',
        builder: (context) => Column(
          children: [
            AutoResizedText(
              'ユーザーの操作によって動的に変化するアニメーション',
              textAreaHeight: context.slideSize.height * 0.1,
              style: context.text.displayMedium,
            ),
            const CGap(heightFactor: 0.05),
            LikeButton(
              width: context.slideSize.height * 0.4,
              height: context.slideSize.height * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
