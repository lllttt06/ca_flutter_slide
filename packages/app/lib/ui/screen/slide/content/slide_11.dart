import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide11 extends FlutterDeckSlideWidget {
  const Slide11()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/11',
            title: 'Rive でアニメーション作成',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final s = context.slideSize;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 11,
        title: 'Rive でアニメーション作成',
        builder: (context) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoResizedText(
                  'Rive のファイル形式',
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  '・riv ファイル',
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  '　Runtime 用のファイル',
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  '　Flutter ではこちらを使用',
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                const CGap(heightFactor: 0.02),
                AutoResizedText(
                  '・rev ファイル',
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  '　元データのファイル',
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  '　Editor ではこちらを使用',
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
            Assets.images.rivDownload.image(
              width: s.width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
