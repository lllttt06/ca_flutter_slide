import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 初期化が一度だけ行われる useEffect
void useEffectOnce(ValueGetter<Dispose?> effect) {
  return useEffect(effect, const []);
}
