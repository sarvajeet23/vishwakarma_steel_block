import 'package:block_testing/router/app_routes.dart';
import 'package:get/get.dart';

abstract class RoutesManagements {
  static void goToSplashPage() {
    Get.toNamed(AppRoutes.splashPage);
  }

  static void goToDashboard() {
    Get.toNamed(AppRoutes.dashboard);
  }

  static void goToProductPage() {
    Get.toNamed(AppRoutes.productPage);
  }

  static void goToCommentsPage({String? postId}) {
    Get.toNamed(AppRoutes.commentsPage, arguments: postId);
  }

  static void goToMoviePage() {
    Get.toNamed(AppRoutes.movie);
  }
}
