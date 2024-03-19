import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide9 extends FlutterDeckSlideWidget {
  const Slide9()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/9',
            title: 'Create Animation with Rive',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 9,
        title: context.l10n.slide_9_title,
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.riveEditor.image(
              width: context.slideSize.width * 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
