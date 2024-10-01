import 'package:block_testing/controllers/getx_dependency_injection/app_page_binding.dart';
import 'package:block_testing/Modules/comment/view/comments_page.dart';
import 'package:block_testing/Modules/dashboard/dash_board.dart';
import 'package:block_testing/Modules/products/product_screen.dart';
import 'package:block_testing/Modules/splash/splash_page.dart';
import 'package:block_testing/router/app_routes.dart';
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
      name: AppRoutes.dashboard,
      page: () => const DashBoard(),
      binding: AppPageBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.productPage,
      page: () => const ProductScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: AppRoutes.commentsPage,
      page: () => const CommentsPage(),
    ),
    GetPage(
      name: AppRoutes.movie,
      page: () => MovieSearchScreen(),
    ),
  ];
}
