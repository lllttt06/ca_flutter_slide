import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/fonts.gen.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide1 extends FlutterDeckSlideWidget {
  const Slide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1',
            title: 'title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 1,
        title: '',
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoResizedText(
              context.l10n.slide_1_presentation_title_1,
              textAreaHeight: context.slideSize.height * 0.1,
              style: context.text.displayLarge?.bold.copyWith(
                color: context.color.primary,
                height: 1.5,
              ),
            ),
            AutoResizedText(
              context.l10n.slide_1_presentation_title_2,
              textAreaHeight: context.slideSize.height * 0.1,
              style: context.text.displayLarge?.bold.copyWith(
                color: context.color.primary,
                height: 1.5,
                fontFamily: FontFamily.notoSans,
              ),
            ),
            const CGap(heightFactor: 0.1),
            AutoResizedText(
              context.l10n.slide_1_presentation_name,
              textAreaHeight: context.slideSize.height * 0.1,
              style: context.text.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
