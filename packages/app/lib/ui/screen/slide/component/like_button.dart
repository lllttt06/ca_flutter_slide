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
  static const _inputHover = 'Hover';

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    final hover = useRef<SMIBool?>(null);
    final pressed = useRef<SMIBool?>(null);

    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () {
          pressed.value!.value = !pressed.value!.value;
        },
        child: Assets.rive.lightLike.rive(
          onInit: (artboard) {
            stateMachineController.value = StateMachineController.fromArtboard(
              artboard,
              _stateMachineName,
            );
            artboard.addController(stateMachineController.value!);

            hover.value ??= stateMachineController.value!
                .findInput<bool>(_inputHover)! as SMIBool;
            hover.value!.value = true;
            pressed.value ??= stateMachineController.value!
                .findInput<bool>(_inputPressed)! as SMIBool;
          },
        ),
      ),
    );
  }
}
