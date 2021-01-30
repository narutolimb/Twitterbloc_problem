import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_26_1/layout/cubit/cubit.dart';
import 'package:flutter_list_26_1/layout/cubit/states.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            elevation: 5.0,
            title: HomeCubit.get(context)
                .titles[HomeCubit.get(context).currentIndex],
            iconTheme: IconThemeData(
              color: Colors.blue,
            ),
          ),
          // body: HomeCubit.get(context)
          //     .screens[HomeCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: 'Message'),
            ],
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              HomeCubit.get(context).changeIndex(index);
            },
            currentIndex: HomeCubit.get(context).currentIndex,
          ),
        );
      },
    );
  }
}
