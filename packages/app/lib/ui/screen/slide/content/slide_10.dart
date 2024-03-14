import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class Slide10 extends FlutterDeckSlideWidget {
  const Slide10()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/10',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'Flutter での実装',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoResizedText(
                '使用する package',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              Gap(context.slideSize.height * 0.01),
              LinkText(
                text: '・rive',
                url: 'https://pub.dev/packages/rive',
                textAreaHeight: textAreaHeight * 1.2,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                '　RiveAnimation Widget などを提供する公式 package',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              LinkText(
                text: '・flutter_gen',
                url: 'https://pub.dev/packages/flutter_gen',
                textAreaHeight: textAreaHeight * 1.2,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: AutoResizedText(
                      '　.riv ファイルを文字列ではなく型安全に',
                      textAreaHeight: textAreaHeight,
                      style: context.text.displayMedium,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  const Flexible(
                    flex: 2,
                    child: CodeView(
                      code: _code,
                      widthFactor: 0.4,
                      heightFactor: 0.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const _code = '''
  // flutter_gen なし
  RiveAnimation.asset('assets/rive/like_button.riv'),

  // flutter_gen あり
  Assets.rive.likeButton.rive(),
  ''';
}
