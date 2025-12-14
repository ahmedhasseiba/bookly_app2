import 'package:bookly_app2/core/utils/app_routers.dart';
import 'package:bookly_app2/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 16),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 24),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
