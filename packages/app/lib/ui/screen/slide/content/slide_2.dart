import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide2 extends FlutterDeckSlideWidget {
  const Slide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2',
            title: '自己紹介',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 2,
        title: '自己紹介',
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.slideSize.height * 0.1),
          child: Row(
            children: [
              ClipOval(
                child: Assets.images.self.image(
                  width: context.slideSize.height * 0.4,
                  height: context.slideSize.height * 0.4,
                ),
              ),
              const CGap(widthFactor: 0.05),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoResizedText(
                      '吉田航己 Yoshida Koki',
                      textAreaHeight: context.slideSize.height * 0.1,
                      style: context.text.displayMedium,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '株式会社サイバーエージェント 2023 年度入社',
                      textAreaHeight: context.slideSize.height * 0.1,
                      style: context.text.displayMedium,
                      alignment: Alignment.centerLeft,
                    ),
                    Row(
                      children: [
                        AutoResizedText(
                          'X : ',
                          textAreaHeight: context.slideSize.height * 0.1,
                          style: context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                        LinkText(
                          text: '@koki8442',
                          url: 'https://twitter.com/koki8442',
                          textAreaHeight: context.slideSize.height * 0.1,
                          style: context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AutoResizedText(
                          'GitHub : ',
                          textAreaHeight: context.slideSize.height * 0.1,
                          style: context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                        LinkText(
                          text: 'lllttt06',
                          url: 'https://github.com/lllttt06',
                          textAreaHeight: context.slideSize.height * 0.1,
                          style: context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
