import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgProvider;

import '../../resource/resource.dart';
import '../auto_hide_keyboard.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final Color? backgroundAppColor;
  final Gradient? backgroundAppGradient;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? appbar;
  final AppBar? appBarMaterial;
  final Widget? floatingActionButton;
  final bool? resizeToAvoidBottom;
  final bool topSafe;
  final bool bottomSafe;
  final bool extendBodyBehindAppBar;
  final Widget? bottomSheet;
  final String? backgroundImage;

  const AppScaffold(
      {required this.body,
      super.key,
      this.backgroundColor,
      this.bottomNavigationBar,
      this.drawer,
      this.endDrawer,
      this.appbar,
      this.resizeToAvoidBottom = false,
      this.floatingActionButton,
      this.appBarMaterial,
      this.backgroundAppColor,
      this.topSafe = true,
      this.bottomSafe = true,
      this.extendBodyBehindAppBar = false,
      this.backgroundAppGradient,
      this.bottomSheet,
      this.backgroundImage});

  bool get isBackGroundImageIsSvg => backgroundImage?.endsWith('.svg') == true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: backgroundImage?.isNotEmpty == true
            ? isBackGroundImageIsSvg
                ? DecorationImage(
                    image: svgProvider.Svg(backgroundImage ?? ''),
                    fit: BoxFit.cover,
                  )
                : DecorationImage(
                    image: AssetImage(backgroundImage ?? ''),
                    fit: BoxFit.cover,
                  )
            : null,
        color: backgroundAppColor ?? AppColors.mainBG,
        gradient: backgroundAppGradient,
      ),
      child: SafeArea(
        top: topSafe,
        bottom: bottomSafe,
        child: Stack(
          children: [
            Positioned.fill(
              child: Scaffold(
                bottomSheet: bottomSheet,
                extendBodyBehindAppBar: extendBodyBehindAppBar,
                extendBody: true,
                appBar: appBarMaterial,
                resizeToAvoidBottomInset: resizeToAvoidBottom,
                backgroundColor: backgroundColor ?? AppColors.transparent,
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (appbar != null) ...[appbar ?? const SizedBox.shrink()],
                    Expanded(
                      child: AutoHideKeyboard(child: body),
                    )
                  ],
                ),
                // bottomNavigationBar: bottomNavigationBar,
                drawer: drawer,
                endDrawer: endDrawer,
                floatingActionButton: floatingActionButton,
                onDrawerChanged: (show) {
                  //TODO: add callback later
                  // if (show) {
                  //   AppEventBloc()
                  //       .emitEvent(AppEvent(EventName.showBottomBar, false));
                  // } else {
                  //   AppEventBloc().emitEvent(AppEvent(EventName.showBottomBar));
                  // }
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Material(
                color: Colors.transparent,
                child: bottomNavigationBar ?? const SizedBox.shrink(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
