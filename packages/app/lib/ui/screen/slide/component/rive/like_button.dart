import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rive/rive.dart';

class LikeButton extends HookWidget {
  const LikeButton({required this.width, required this.height, super.key});

  final double width;
  final double height;

  static const _stateMachineName = 'LikeStateMachine';

  static const _inputPressed = 'Pressed';

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    final pressed = useRef<SMIBool?>(null);

    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => pressed.value!.value = !pressed.value!.value,
        child: Assets.rive.lightLike.rive(
          onInit: (artboard) {
            // artboard から StateMachineController を取得
            stateMachineController.value = StateMachineController.fromArtboard(
              artboard,
              _stateMachineName,
            );
            // artboard に StateMachineController を紐付ける
            artboard.addController(stateMachineController.value!);

            // StateMachineController から SMIBool を取得
            pressed.value ??= stateMachineController.value!
                .findInput<bool>(_inputPressed)! as SMIBool;
          },
        ),
      ),
    );
  }
}
