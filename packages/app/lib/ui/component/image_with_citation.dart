import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/state/citation_state.dart';
import 'package:ca_flutter_slide/ui/hook/use_effect_once.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 引用付きの Widget
class CitedWidget extends HookConsumerWidget {
  const CitedWidget({
    required this.child,
    required this.description,
    required this.citation,
    super.key,
  });

  final Widget child;
  final String description;
  final Citation citation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffectOnce(() {
      ref.read(citationStateProvider.notifier).add(citation);
      return null;
    });

    return Column(
      children: [
        child,
        Text(
          description,
          style: context.text.displaySmall,
        ),
      ],
    );
  }
}
