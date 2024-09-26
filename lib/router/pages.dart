import 'package:block_testing/controller/binding/app_Page_binding.dart';
import 'package:block_testing/router/app_routes.dart';
import 'package:get/get.dart';
import 'package:block_testing/view/comment/comments_page.dart';
import 'package:block_testing/view/dashboard/dash_board.dart';
import 'package:block_testing/view/products/product_screen.dart';
import 'package:block_testing/view/splash/splash_page.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(name: AppRoutes.splashPage, page: () => SplashPage()),
    GetPage(
        name: AppRoutes.dashboard,
        page: () => const DashBoard(),
        binding: AppPageBinding()),
    GetPage(name: AppRoutes.productPage, page: () => const ProductScreen()),
    GetPage(name: AppRoutes.commentsPage, page: () => const CommentsPage()),
  ];
}
