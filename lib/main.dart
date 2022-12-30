import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screen/homeScreen/provider/HomeProvider.dart';
import 'package:weatherapp/screen/homeScreen/view/homeScreen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :(context) => homeScreen(),
        },
      ),
    ),
  );
}