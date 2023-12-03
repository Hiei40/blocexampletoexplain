import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_screen_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit, HomeScreenStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        int x = context.select((HomeScreenCubit cubit) => cubit.counter);

        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<HomeScreenCubit>().incrementCounter();
                  },
                  icon: Icon(Icons.add),
                ),
                Text("$x"),
                IconButton(
                  onPressed: () {
                    context.read<HomeScreenCubit>().removeCounter();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
