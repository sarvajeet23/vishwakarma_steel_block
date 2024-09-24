import 'package:block_testing/router/app_routes.dart';
import 'package:block_testing/router/pages.dart';
import 'package:block_testing/utility/app_dime.dart';
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
    Dime.setScreenDimensions(
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width,
    );
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

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: CounterPage(),
//     );
//   }
// }

// class CounterPage extends StatelessWidget {
//   // Define a reactive variable for the counter
//   var counter = 0.obs;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GetX Counter Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Obx widget listens to changes in the counter variable
//             Obx(() => Text(
//                   'Counter value: ${counter.value}',
//                   style: const TextStyle(fontSize: 32),
//                 )),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     counter.value++; // Increment the counter
//                   },
//                   child: const Text('Increment'),
//                 ),
//                 const SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     counter.value--; // Decrement the counter
//                   },
//                   child: const Text('Decrement'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
