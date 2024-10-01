import 'package:block_testing/Modules/dashboard/bloc/dash_board_bloc.dart';
import 'package:block_testing/Modules/app/app_page.dart';
import 'package:block_testing/Modules/help/help_page.dart';
import 'package:block_testing/Modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [HomePage(), AppPage(), HelpPage()];

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   actions: [
      //     TextButton(
      //       onPressed: () => Get.toNamed(AppRoutes.productPage),
      //       child: const Text("Products"),
      //     ),
      //     TextButton(
      //       onPressed: () => Get.toNamed(AppRoutes.commentsPage),
      //       child: const Text("Comments"),
      //     ),
      //   ],
      // ),
      body: BlocBuilder<DashBoardBloc, DashBoardState>(
        builder: (context, state) {
          if (state is TabChangedState) {
            return pages[state.currentIndex];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<DashBoardBloc, DashBoardState>(
        builder: (context, state) {
          return NavigationBar(
            selectedIndex: state is TabChangedState ? state.currentIndex : 0,
            onDestinationSelected: (index) {
              context.read<DashBoardBloc>().add(ChangeTabEvent(index));
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.apps), label: "App"),
              NavigationDestination(icon: Icon(Icons.help), label: "help"),
            ],
          );
        },
      ),
    );
  }
}
