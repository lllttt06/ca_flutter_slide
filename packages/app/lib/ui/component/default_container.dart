import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    required this.screenName,
    required this.child,
    super.key,
  });

  final String screenName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: screenName,
      container: true,
      explicitChildNodes: true,
      child: child,
    );
  }
}
