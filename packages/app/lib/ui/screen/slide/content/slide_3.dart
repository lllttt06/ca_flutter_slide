import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
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
            title: 'What is Rive?',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 3,
        title: context.l10n.slide_3_title,
        builder: (context) => Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoResizedText(
                  context.l10n.slide_3_description_1,
                  textAreaHeight: context.slideSize.height * 0.1,
                  style: context.text.displayLarge?.bold,
                ),
                const CGap(heightFactor: 0.1),
                AutoResizedText(
                  context.l10n.slide_3_description_2,
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
