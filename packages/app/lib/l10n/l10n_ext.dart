import 'package:flutter/widgets.dart';
import 'package:ca_flutter_slide/l10n/l10n.dart';

extension BuildContextExt on BuildContext {
  L10n get l10n => L10n.of(this);
}
