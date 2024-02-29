import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class SelfIntroductionSlide extends FlutterDeckSlideWidget {
  const SelfIntroductionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/self-introduction',
            header: FlutterDeckHeaderConfiguration(
              title: '自己紹介',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Row(
              children: [
                ClipOval(
                  child: Assets.images.self.image(
                    width: context.screenSize.width * 0.2,
                    height: context.screenSize.width * 0.2,
                  ),
                ),
                const Gap(60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '吉田航己 Yoshida Koki',
                      style: context.text.displayMedium,
                    ),
                    const Gap(40),
                    Text(
                      '株式会社サイバーエージェント 2023 年度入社',
                      style: context.text.displayMedium,
                    ),
                    const Gap(40),
                    Text(
                      'X: @koki8442 GitHub: lllttt06',
                      style: context.text.displaySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
