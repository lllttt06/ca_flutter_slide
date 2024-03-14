import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

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
            const CGap(heightFactor: 0.05),
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
        title: 'Flutter のアニメーション',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Row(
            children: [
              SizedBox(
                width: context.slideSize.width * 0.37,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: FlutterDeckCodeHighlight(
                    code: _code,
                    language: 'dart',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    AutoResizedText(
                      'よく使われるのは',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.semiBold,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・Animation Class',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    Row(
                      children: [
                        AutoResizedText(
                          '・',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                        LinkText(
                          text: 'flutter_animate',
                          url: 'https://pub.dev/packages/flutter_animate',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                        AutoResizedText(
                          ' などのパッケージ',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                      ],
                    ),
                    const CGap(heightFactor: 0.05),
                    AutoResizedText(
                      'デメリット',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.semiBold,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・細かいアニメーションを作るのが難しい',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・デザイナーとの共有が難しい',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    const CGap(heightFactor: 0.05),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: context.slideSize.height * 0.05,
                        ),
                        const CGap(widthFactor: 0.01),
                        Row(
                          children: [
                            AutoResizedText(
                              'Rive',
                              textAreaHeight: context.slideSize.height * 0.12,
                              style: context.text.displayLarge?.bold.copyWith(
                                color: context.color.primary,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            AutoResizedText(
                              ' を使用！',
                              textAreaHeight: context.slideSize.height * 0.12,
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
            ],
          ),
        ),
      ),
    );
  }

  static const _code = '''
// Animation Class を使用した例
AnimatedOpacity(
  duration: const Duration(milliseconds: 500),
  opacity: opacity,
  child: AnimatedScale(
    duration: const Duration(milliseconds: 500),
    scale: scale,
    child: const Text("Hello"),
  ),
);

// flutter_animate を使用した例
Text("Hello").animate()
  .fade(duration: 500.ms)
  .scale(duration: 500.ms);
  ''';
}

class InteractiveAnimationSlide4 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/4',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'Rive のメリット',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              const CGap(heightFactor: 0.1),
              AutoResizedText(
                'Flutter アニメーションのデメリットを解決できる！',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.semiBold,
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              AutoResizedText(
                '・細かいアニメーションを作るのが難しい',
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                '→ .riv ファイルを読み込むだけ',
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
                    '→ 有料版 : ',
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
                '→ 無料版 : .rev ファイルを Rive Editor で確認',
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

class InteractiveAnimationSlide5 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide5()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/5',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
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
