import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide17 extends FlutterDeckSlideWidget {
  const Slide17()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/17',
            title: 'summary',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 17,
        title: context.l10n.slide_17_title,
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              AutoResizedText(
                context.l10n.slide_17_summary_1,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                context.l10n.slide_17_summary_2,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                context.l10n.slide_17_summary_3,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.1),
              AutoResizedText(
                context.l10n.slide_17_future_content,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                context.l10n.slide_17_future_content_1,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                context.l10n.slide_17_future_content_2,
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
