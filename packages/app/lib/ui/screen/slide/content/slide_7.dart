import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide7 extends FlutterDeckSlideWidget {
  const Slide7()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/7',
            title: 'Benefits of Rive | Comparison with Lottie',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 7,
        title: context.l10n.slide_7_title,
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
                                context.l10n.slide_7_pipeline,
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
                                context.l10n.slide_7_file_size,
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
                                context.l10n.slide_7_free_version,
                                textAreaHeight: context.slideSize.height * 0.06,
                                style: context.text.displayLarge,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Assets.images.lottieLogo.image(
                                width: context.slideSize.height * 0.05,
                              ),
                              AutoResizedText(
                                context.l10n.slide_7_community,
                                textAreaHeight: context.slideSize.height * 0.06,
                                style: context.text.displayLarge,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Assets.images.lottieLogo.image(
                                width: context.slideSize.height * 0.05,
                              ),
                              AutoResizedText(
                                context.l10n.slide_7_animation_freedom,
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
              text: context.l10n.slide_7_rive_vs_lottie,
              url: 'https://rive.app/blog/rive-as-a-lottie-alternative',
              textAreaHeight: context.slideSize.height * 0.06,
              style: context.text.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
