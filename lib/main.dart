import 'package:firebase_core/firebase_core.dart';
import 'package:vishwakarama_steel_bloc/controllers/bloc_dependency_injection/app_repository_provider.dart';
import 'package:vishwakarama_steel_bloc/firebase_options.dart';
import 'package:vishwakarama_steel_bloc/router/app_routes.dart';
import 'package:vishwakarama_steel_bloc/router/pages.dart';
import 'package:vishwakarama_steel_bloc/core/configs/app_dime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/controllers/bloc_dependency_injection/app_bloc_provider.dart';
import 'core/configs/theme/app_theme.dart';
import 'core/services/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e, s) {
    debugPrint('Firebase initialization failed: $e+$s');
  }

  runApp(
    MaterialApp(
      home: Builder(
        builder: (context) {
          Dime.init(
            MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
          );
          return const MyApp();
        },
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: AppRepositoryProvider.providers,
      child: MultiBlocProvider(
        providers: AppBlocProvider.providers,
        child: GetMaterialApp(
          navigatorKey: navigatorKey,
          // theme: AppTheme.lightTheme,
          // darkTheme: AppTheme.darkTheme,
          // themeMode: ThemeMode.system,
          initialRoute: AppRoutes.splashPage,
          getPages: Pages.pages,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
