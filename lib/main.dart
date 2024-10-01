import 'dart:async'; // For runZonedGuarded
import 'dart:developer';
import 'package:block_testing/controllers/bloc_dependency_injection/app_repository_provider.dart';
import 'package:block_testing/router/app_routes.dart';
import 'package:block_testing/router/pages.dart';
import 'package:block_testing/core/configs/app_dime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:block_testing/controllers/bloc_dependency_injection/app_bloc_provider.dart';
import 'core/configs/theme/app_theme.dart';
import 'core/services/navigation_service.dart';

void main() {
  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, trace) {
    // Log the error to console or send it to an error reporting service
    log('Caught an error: $error');
    log('Stack trace: $trace');

    // Optionally, integrate Firebase Crashlytics or another error service
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Dime.setScreenDimensions(
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width,
    );
    return MultiRepositoryProvider(
      providers: AppRepositoryProvider.providers,
      child: MultiBlocProvider(
        providers: AppBlocProvider.providers,
        child: GetMaterialApp(
          navigatorKey: navigatorKey,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: AppRoutes.splashPage,
          getPages: Pages.pages,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
