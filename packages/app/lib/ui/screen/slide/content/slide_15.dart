import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide15 extends FlutterDeckSlideWidget {
  const Slide15()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/15'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: '実装の tips',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  AutoResizedText(
                    '3. ',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'RepaintBoundary',
                    url:
                        'https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    ' で不要な Repaint を抑える',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              AutoResizedText(
                '  SMI value 取得の拡張関数を定義',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CodeView(
                    code: code1,
                    widthFactor: 0.45,
                    heightFactor: 0.43,
                  ),
                  CodeView(
                    code: code2,
                    widthFactor: 0.45,
                    heightFactor: 0.43,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const code1 = '''
RepaintBoundary(
  child: Assets.rive.lightLike.rive(
    onInit: (artboard) {
      stateMachineController.value = initStateMachineController(
        artboard: artboard,
        name: 'LikeStateMachine',
      );
      // この部分
      pressed.value ??= stateMachineController.value!.findInputBool('Pressed');
    },
  ),
);
  ''';

  static const code2 = '''
// rive_ext.dart
extension StateMachineControllerExt on StateMachineController {
  // SMI = State Machine Instance
  SMIBool findInputBool(String name) => findInput<bool>(name)! as SMIBool;
  SMINumber findInputNumber(String name) =>
      findInput<double>(name)! as SMINumber;
  SMITrigger findInputTrigger(String name) =>
      findInput<bool>(name)! as SMITrigger;
}
  ''';
}
