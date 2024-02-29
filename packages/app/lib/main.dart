import 'package:ca_flutter_slide/l10n/l10n.dart';
import 'package:ca_flutter_slide/route/app_route.dart';
import 'package:ca_flutter_slide/ui/screen/slide/slide_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  BindingBase.debugZoneErrorsAreFatal = true;

  if (kReleaseMode) {
    // リリースビルドではログを表示しない
    debugPrint = (String? message, {int? wrapWidth}) {};
  }

  // runApp(const SlideScreen());
  runApp(const ProviderScope(child: SlideScreen()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: L10n.localizationsDelegates,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
