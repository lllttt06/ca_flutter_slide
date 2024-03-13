import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class InteractiveAnimationSlide1 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/1',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'インタラクティブアニメーションとは',
        builder: (context) => Column(
          children: [
            AutoResizedText(
              'ユーザーの操作によって動的に変化するアニメーション',
              textAreaHeight: context.slideSize.height * 0.1,
              style: context.text.displayMedium,
            ),
            Gap(context.slideSize.height * 0.05),
            LikeButton(
              width: context.slideSize.height * 0.4,
              height: context.slideSize.height * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}

class InteractiveAnimationSlide2 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/2',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'インタラクティブアニメーションの利点',
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.slideSize.height * 0.1),
          child: AutoResizedText(
            '・特定の行動をユーザーに促せる \n・難しいことをわかりやすく直感的に説明できる \n・楽しいユーザー体験を提供できる',
            textAreaHeight: context.slideSize.height * 0.7,
            style: context.text.displayLarge?.copyWith(height: 2),
          ),
        ),
      ),
    );
  }
}

class InteractiveAnimationSlide3 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/3',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'インタラクティブアニメーションの利点',
        builder: (context) => Column(
          children: [
            AutoResizedText(
              '・パイプライン \n・ファイルサイズ',
              textAreaHeight: context.slideSize.height * 0.2,
              style: context.text.displayLarge?.copyWith(height: 1.5),
            ),
            Gap(context.slideSize.height * 0.05),
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
            Gap(context.slideSize.height * 0.05),
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
