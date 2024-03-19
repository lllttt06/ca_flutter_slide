import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide4 extends FlutterDeckSlideWidget {
  const Slide4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4',
            title: 'Benefit of Interactive Animation',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 4,
        title: context.l10n.slide_4_title,
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.slideSize.height * 0.1),
          child: AutoResizedText(
            context.l10n.slide_4_description,
            textAreaHeight: context.slideSize.height * 0.7,
            style: context.text.displayLarge?.copyWith(height: 2),
          ),
        ),
      ),
    );
  }
}
