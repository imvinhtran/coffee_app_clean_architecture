import 'package:auto_route/auto_route.dart';
import 'package:coffee_app/navigation/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      RouteType.adaptive(); //.cupertino, .adaptive ..etc

  List<AutoRoute> get routes => [
        // HomeScreen is generated as HomeRoute because
        // of the replaceInRouteName property
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: CoffeeListRoute.page,
        ),
        AutoRoute(
          page: CoffeeDetailRoute.page,
        ),
        AutoRoute(
          page: OrderDetailRoute.page,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
