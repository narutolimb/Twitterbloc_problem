import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_list_26_1/layout/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_26_1/modules/home/home_screen.dart';
import 'package:flutter_list_26_1/modules/messages/messages_screen.dart';
import 'package:flutter_list_26_1/modules/notification/notification_screen.dart';
import 'package:flutter_list_26_1/modules/search/search_screen.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeStateInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  var screens = [
    homeScreen(),
    searchScreen(),
    notificationScreen(),
    messageScreen(),
  ];

  var titles = [
    Image.asset(
      'images/Twitter_logo.png',
      height: 20.0,
    ),
    Text(
      'Search',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Notifications',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Messages',
      style: TextStyle(color: Colors.black),
    ),
  ];

  var currentIndex = 0;
  changeIndex(index) {
    currentIndex = index;
    emit(HomeStateIndex());
  }
}
