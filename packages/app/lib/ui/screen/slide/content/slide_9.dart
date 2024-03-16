import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide9 extends FlutterDeckSlideWidget {
  const Slide9()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/9'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 9,
        title: 'Rive でアニメーション作成',
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
