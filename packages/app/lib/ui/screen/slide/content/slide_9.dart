import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rive/rive.dart';

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
        pageNumber: 9,
        title: 'Rive でアニメーション作成',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.riveEditor.image(
              width: context.slideSize.width * 0.8,
            ),
          ],
        ),
      ),
    );
  }
}

class Slide91 extends FlutterDeckSlideWidget {
  const Slide91()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/91'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final s = context.slideSize;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 9,
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

class Slide92 extends FlutterDeckSlideWidget {
  const Slide92()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/92'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final s = context.slideSize;
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 9,
        title: 'Rive でアニメーション作成',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoResizedText(
              'StateMachine の Input を変更することでアニメーションを制御',
              textAreaHeight: s.height * 0.1,
              style: context.text.displayMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const LightLikeOff(),
                    Assets.images.riveEditorPressedOff.image(
                      height: s.height * 0.3,
                    ),
                    AutoResizedText(
                      'Pressed == false',
                      textAreaHeight: s.height * 0.05,
                      style: context.text.displayMedium,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const LightLikeOn(),
                    Assets.images.riveEditorPressedOn.image(
                      height: s.height * 0.3,
                    ),
                    AutoResizedText(
                      'Pressed == true',
                      textAreaHeight: s.height * 0.05,
                      style: context.text.displayMedium,
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

class LightLikeOn extends HookWidget {
  const LightLikeOn({super.key});

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    final pressed = useRef<SMIBool?>(null);
    final s = context.slideSize;

    return SizedBox(
      width: s.width * 0.2,
      height: s.height * 0.25,
      child: Assets.rive.lightLike.rive(
        onInit: (artboard) {
          // artboard から StateMachineController を取得
          stateMachineController.value = StateMachineController.fromArtboard(
            artboard,
            'LikeStateMachine',
          );
          // artboard に StateMachineController を紐付ける
          artboard.addController(stateMachineController.value!);

          // StateMachineController から SMIBool を取得
          pressed.value ??= stateMachineController.value!
              .findInput<bool>('Pressed')! as SMIBool;
          pressed.value!.value = true;
        },
      ),
    );
  }
}

class LightLikeOff extends HookWidget {
  const LightLikeOff({super.key});

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    final pressed = useRef<SMIBool?>(null);
    final s = context.slideSize;

    return SizedBox(
      width: s.width * 0.2,
      height: s.height * 0.25,
      child: Assets.rive.lightLike.rive(
        onInit: (artboard) {
          // artboard から StateMachineController を取得
          stateMachineController.value = StateMachineController.fromArtboard(
            artboard,
            'LikeStateMachine',
          );
          // artboard に StateMachineController を紐付ける
          artboard.addController(stateMachineController.value!);

          // StateMachineController から SMIBool を取得
          pressed.value ??= stateMachineController.value!
              .findInput<bool>('Pressed')! as SMIBool;
        },
      ),
    );
  }
}
