import 'package:flutter/widgets.dart';
import 'package:yakyulog/l10n/l10n.dart';

extension BuildContextExt on BuildContext {
  L10n get l10n => L10n.of(this);
}
