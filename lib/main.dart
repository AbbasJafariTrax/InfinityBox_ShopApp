import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:infinity_box_test/const/distances.dart';
import 'package:infinity_box_test/const/mColors.dart';
import 'package:infinity_box_test/views/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        /// Text Form Field Theme
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: padding15,
            vertical: padding15,
          ),
          filled: true,
          isDense: true,
          fillColor: greyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(padding30)),
            borderSide: BorderSide(color: transparentColor, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(padding30)),
            borderSide: BorderSide(color: transparentColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(padding30)),
            borderSide: BorderSide(color: transparentColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(padding30)),
            borderSide: BorderSide(color: transparentColor, width: 1),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
      getPages: [
        GetPage(
          name: ProductListScreen.routeName,
          page: () => ProductListScreen(),
        ),
      ],
    );
  }
}
