import 'package:auto_route/auto_route.dart';
import 'package:ca_flutter_slide/ui/screen/root/root_screen.dart';
import 'package:ca_flutter_slide/ui/screen/setting/setting_screen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/slide_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_route.g.dart';
part 'app_route.gr.dart';

@Riverpod(keepAlive: true, dependencies: [])
Raw<AppRouter> appRouter(AppRouterRef ref) {
  return AppRouter();
}

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/slide',
          page: SlideRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/setting',
          page: SettingRoute.page,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next();
  }
}
