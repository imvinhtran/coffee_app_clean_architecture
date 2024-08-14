import 'package:auto_route/auto_route.dart';
import 'package:coffee_app/common_widget/base/app_button.dart';
import 'package:coffee_app/common_widget/base/app_scaffold.dart';
import 'package:coffee_app/common_widget/base/app_text.dart';
import 'package:coffee_app/navigation/routes/app_router.gr.dart';
import 'package:coffee_app/resource/assets.gen.dart';
import 'package:coffee_app/resource/i18n/translations.g.dart';
import 'package:coffee_app/resource/resource.dart';
import 'package:coffee_app/utils/screen_utils.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        backgroundImage: Assets.imagesBgWelcome.path,
        bottomSafe: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(),
              AppText.headline2(
                t.welcomeScreen.welcomeTitle,
                textAlign: TextAlign.center,
                color: AppColors.white,
              ),
              16.height,
              //
              AppText.body1Default(
                t.welcomeScreen.welcomeSubtitle,
                textAlign: TextAlign.center,
                color: AppColors.white,
              ),
              16.height,
              AppButton(
                title: t.welcomeScreen.getStarted,
                onPressed: () {
                  context.router.push(
                    const HomeRoute(),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
