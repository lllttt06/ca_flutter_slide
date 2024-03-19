import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide3 extends FlutterDeckSlideWidget {
  const Slide3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3',
            title: 'Rive とは？',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 3,
        title: 'Rive とは？',
        builder: (context) => Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoResizedText(
                  'インタラクティブアニメーション*を作成できるツール',
                  textAreaHeight: context.slideSize.height * 0.1,
                  style: context.text.displayLarge?.bold,
                ),
                const CGap(heightFactor: 0.1),
                AutoResizedText(
                  '*ユーザーの操作によって動的に変化するアニメーション\n 例えば、、、',
                  textAreaHeight: context.slideSize.height * 0.1,
                  style: context.text.displayMedium,
                ),
                Rating(
                  width: context.slideSize.width * 0.3,
                  height: context.slideSize.height * 0.2,
                ),
              ],
            ),
            Positioned(
              bottom: context.slideSize.height * 0.1,
              right: 0,
              child: Assets.images.qr.image(
                width: context.slideSize.width * 0.25,
                height: context.slideSize.height * 0.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
