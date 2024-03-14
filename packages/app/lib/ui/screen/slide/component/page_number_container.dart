import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:flutter/widgets.dart';

class PageNumberContainer extends StatelessWidget {
  const PageNumberContainer({
    required this.child,
    required this.pageNumber,
    super.key,
  });

  final Widget child;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AutoResizedText(
              pageNumber.toString(),
              textAreaHeight: context.slideSize.height * 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
