import 'package:vishwakarama_steel_bloc/core/configs/app_dime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_page_bloc.dart';
import '../bloc/home_page_state.dart';

class TitleWithLabel extends StatelessWidget {
  const TitleWithLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Title"), Text("More")],
        ),
        Dime.h1Box,
        BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Initial State')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (data) => SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(data[index]),
                      )),
                    ),
                  ),
                ),
              ),
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        ),
      ],
    );
  }
}
