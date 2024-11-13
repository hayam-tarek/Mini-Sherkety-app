import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/company_app_bar.dart';
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/home_view_body.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgets/custom_nav_bar.dart';

@widgetbook.UseCase(name: 'home Page', type: HomeView)
Widget homeViewuseCase(BuildContext context) => const HomeView();

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: Drawer(),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingHorizontal,
          ),
          child: Column(
            children: [
              CompanyAppBar(),
              HomeViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
