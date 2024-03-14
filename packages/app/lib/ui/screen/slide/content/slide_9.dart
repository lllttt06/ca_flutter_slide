import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/empty.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class Slide9 extends FlutterDeckSlideWidget {
  const Slide9()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/9'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final demoWidth = context.slideSize.height * 0.4;
    final textAreaHeight = context.slideSize.height * 0.05;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'Rive でアニメーション作成',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoResizedText(
              'いいねボタンをサンプル',
              textAreaHeight: textAreaHeight * 2,
              style: context.text.displayMedium,
            ),
            Gap(context.slideSize.height * 0.1),
            Table(
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            'いいね',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayMedium,
                          ),
                          LikeButton(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            'レーティング',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayMedium,
                          ),
                          Rating(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            'Empty',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayMedium,
                          ),
                          Empty(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
