import 'package:dropme/core/di/dependency_injection.dart';
import 'package:dropme/presentation/controllers/points/points_cubit.dart';
import 'package:dropme/presentation/controllers/rewards/rewards_cubit.dart';
import 'package:dropme/presentation/view/screens/onboarding_view.dart';
import 'package:dropme/presentation/view/screens/qr_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DropMe extends StatelessWidget {
  const DropMe({super.key, required this.showOnboarding});

  final bool showOnboarding;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<RewardsCubit>()..loadRewards()),
        BlocProvider(create: (context) => getIt<PointsCubit>()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder:
            (context, child) => ResponsiveBreakpoints.builder(
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
              child: child!,
            ),
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        themeMode: ThemeMode.light,
        home: showOnboarding ? OnboardingView() : QrView(),
      ),
    );
  }
}
