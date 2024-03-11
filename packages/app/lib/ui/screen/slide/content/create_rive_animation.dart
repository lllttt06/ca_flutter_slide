import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/empty.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/like_button.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class CreateRiveAnimationSlide extends FlutterDeckSlideWidget {
  const CreateRiveAnimationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-rive-animation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Rive アニメーション作成',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final demoWidth = context.slideSize.height * 0.4;
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rive 公式の UseCase より引用',
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
                            Text(
                              'いいねボタン',
                              style: context.text.displayMedium,
                            ),
                            LikeButton(width: demoWidth, height: demoWidth),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: [
                            Text(
                              'レーティングボタン',
                              style: context.text.displayMedium,
                            ),
                            Rating(width: demoWidth, height: demoWidth),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: [
                            Text(
                              'アニメーション',
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
        );
      },
    );
  }
}
