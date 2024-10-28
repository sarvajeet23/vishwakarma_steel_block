import 'package:vishwakarama_steel_bloc/auth/controller/login_controller.dart';
import 'package:vishwakarama_steel_bloc/auth/controller/sing_up_controller.dart';
import 'package:vishwakarama_steel_bloc/auth/login_page.dart';
import 'package:vishwakarama_steel_bloc/auth/singup_page.dart';
import 'package:vishwakarama_steel_bloc/controllers/getx_dependency_injection/app_page_binding.dart';
import 'package:vishwakarama_steel_bloc/Modules/comment/view/comments_page.dart';
import 'package:vishwakarama_steel_bloc/Modules/dashboard/dash_board.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/product_screen.dart';
import 'package:vishwakarama_steel_bloc/Modules/splash/splash_page.dart';
import 'package:vishwakarama_steel_bloc/router/app_routes.dart';
import 'package:get/get.dart';

import '../Modules/movies/movie_search_screen.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => SplashPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      binding: BindingsBuilder.put(() => LoginController()),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoutes.singUpPage,
      page: () => SingUpPage(),
      binding: BindingsBuilder.put(() => SingUpController()),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashBoard(),
      binding: AppPageBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.productPage,
      page: () => const ProductScreen(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.commentsPage,
      page: () => const CommentsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.movie,
      page: () => const MovieSearchScreen(),
    ),
  ];
}
