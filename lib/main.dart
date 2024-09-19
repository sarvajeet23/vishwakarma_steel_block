import 'package:block_testing/router/app_routes.dart';
import 'package:block_testing/router/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:block_testing/provider/app_bloc_provider.dart';
import 'package:block_testing/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.providers,
      child: GetMaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: AppRoutes.splashPage,
        getPages: Pages.pages,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
