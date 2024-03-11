import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SelfIntroductionSlide extends FlutterDeckSlideWidget {
  const SelfIntroductionSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/self-introduction'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
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
              Flexible(
                child: AutoResizedText(
                  '吉田航己 Yoshida Koki \n株式会社サイバーエージェント 2023 年度入社\nX: @koki8442 \nGitHub: lllttt06',
                  textAreaHeight: context.slideSize.height * 0.4,
                  style: context.text.displayMedium?.copyWith(
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
