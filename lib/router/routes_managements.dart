import 'package:block_testing/router/app_routes.dart';
import 'package:get/get.dart';

abstract class RoutesManagements {
  static void goToHomePage() {
    Get.to(AppRoutes.shibooPage);
  }
}















///-------****************--without getX ---****************//
/*
abstract class RoutesManagements {
  static void goToShibooPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shibooPage);
  }

  static void goToCommentsPage(BuildContext context, {required String postId}) {
    Navigator.pushNamed(
      context,
      AppRoutes.commentsPage,
      arguments: postId,
    );
  }
}
*/
///-------****************--without getX ---****************//