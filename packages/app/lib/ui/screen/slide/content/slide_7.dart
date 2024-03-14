import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide7 extends FlutterDeckSlideWidget {
  const Slide7()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/7'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 7,
        title: 'Rive のメリット | Lottie との比較',
        builder: (context) => Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.slideSize.width * 0.1,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Assets.images.riveLogo
                                  .svg(width: context.slideSize.height * 0.04),
                              AutoResizedText(
                                '  パイプライン',
                                textAreaHeight: context.slideSize.height * 0.06,
                                style: context.text.displayLarge,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Assets.images.riveLogo
                                  .svg(width: context.slideSize.height * 0.04),
                              AutoResizedText(
                                '  ファイルサイズ',
                                textAreaHeight: context.slideSize.height * 0.06,
                                style: context.text.displayLarge,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Assets.images.riveLogo
                                  .svg(width: context.slideSize.height * 0.04),
                              AutoResizedText(
                                '  無料版の機能',
                                textAreaHeight: context.slideSize.height * 0.06,
                                style: context.text.displayLarge,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Assets.images.lottieLogo
                              .image(width: context.slideSize.height * 0.05),
                          AutoResizedText(
                            '  コミュニティの充実度',
                            textAreaHeight: context.slideSize.height * 0.06,
                            style: context.text.displayLarge,
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CGap(heightFactor: 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Assets.images.rivePipeline.image(
                  height: context.slideSize.height * 0.42,
                ),
                Assets.images.riveFileSize.image(
                  height: context.slideSize.height * 0.42,
                ),
              ],
            ),
            const CGap(heightFactor: 0.05),
            LinkText(
              text: 'Rive 公式の Rive vs Lottie より',
              url: 'https://rive.app/blog/rive-as-a-lottie-alternative',
              textAreaHeight: context.slideSize.height * 0.04,
              style: context.text.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
