import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CGap extends StatelessWidget {
  const CGap({this.heightFactor, this.widthFactor, super.key});

  final double? heightFactor;
  final double? widthFactor;

  @override
  Widget build(BuildContext context) {
    assert(
      heightFactor == null || widthFactor == null,
      'heightFactor と widthFactor は同時に指定できません',
    );
    assert(
      0 <= (heightFactor ?? widthFactor)! &&
          (heightFactor ?? widthFactor)! <= 1,
      'factor は 0 以上 1 以下で指定してください',
    );
    if (heightFactor != null) {
      return Gap(context.slideSize.height * heightFactor!);
    }
    return Gap(context.slideSize.width * widthFactor!);
  }
}
