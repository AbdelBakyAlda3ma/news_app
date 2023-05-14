import 'package:flutter/material.dart';
import 'home_view_body_future_builder.dart';
import 'widgets/home_view_body_custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeViewCustomAppBar(),
      body: HomeViewBodyFutureBuilder(),
    );
  }
}
