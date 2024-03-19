import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CitationSlide extends FlutterDeckSlideWidget {
  const CitationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/citation',
            title: '参考文献',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.08;
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 18,
        title: '参考文献',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              LinkText(
                text: 'Rive 公式サイト',
                url: 'https://rive.app/',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: 'flutter_deck',
                url: 'https://pub.dev/packages/flutter_deck',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: 'flutter_animate',
                url: 'https://pub.dev/packages/flutter_animate',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: 'flutter_gen',
                url: 'https://pub.dev/packages/flutter_gen',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: 'rive',
                url: 'https://pub.dev/packages/rive',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: 'RepaintBoundary',
                url:
                    'https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html',
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
