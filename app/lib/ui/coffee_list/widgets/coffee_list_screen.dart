import 'package:auto_route/auto_route.dart';
import 'package:coffee_app/navigation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CoffeeListScreen extends StatefulWidget {
  const CoffeeListScreen({super.key});

  @override
  State<CoffeeListScreen> createState() => _CoffeeListScreenState();
}

class _CoffeeListScreenState extends State<CoffeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            'Coffee_list',
          ),
          GestureDetector(
            onTap: () {
              context.router.push(
                const CoffeeDetailRoute(),
              );
            },
            child: const Text(
              'Order Now',
            ),
          ),
        ],
      ),
    );
  }
}
