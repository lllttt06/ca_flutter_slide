import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide6 extends FlutterDeckSlideWidget {
  const Slide6()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/6'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 6,
        title: 'Rive で Flutter アニメーションのデメリットを解決！',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              const CGap(heightFactor: 0.12),
              AutoResizedText(
                '・細かいアニメーションを作るのが難しい',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                '　→ .riv ファイルを読み込むだけ',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              AutoResizedText(
                '・デザイナーとの共有が難しい',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  AutoResizedText(
                    '　→ 有料版 : ',
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'Share Link',
                    url:
                        'https://help.rive.app/editor/share-links#managing-share-links',
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    ' を作成し、ブラウザでアニメーションの確認',
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              AutoResizedText(
                '　→ 無料版 : Rive Editor で確認',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
