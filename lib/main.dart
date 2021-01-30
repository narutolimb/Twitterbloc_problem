import 'package:flutter/material.dart';
import 'package:flutter_list_26_1/layout/cubit/cubit.dart';
import 'package:flutter_list_26_1/modules/screen_one/screen_one.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: screenOne(),
      ),
    );
  }
}
