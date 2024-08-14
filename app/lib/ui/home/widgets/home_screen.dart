import 'package:auto_route/auto_route.dart';
import 'package:coffee_app/common_widget/base/app_app_bar.dart';
import 'package:coffee_app/common_widget/base/app_scaffold.dart';
import 'package:coffee_app/navigation/routes/app_router.gr.dart';
import 'package:coffee_app/resource/resource.dart';

import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundAppGradient: AppColors.gradientBlackBg,
      appbar: const AppAppBar(),
      backgroundAppColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('HELO'),
          ElevatedButton(
            onPressed: () {
              context.router.push(
                const CoffeeListRoute(),
              );
            },
            child: Text('cick me'),
          ),
        ],
      ),
    );
  }
}
