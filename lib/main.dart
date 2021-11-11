import 'package:flutter/material.dart';
import '/src/view_models/app_key.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Keys()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // adding a theme

        brightness: Brightness.dark, //changing the theme to dark
        primaryColor: Colors.deepPurple,
        // accentColor: Colors.deepPurple[300],
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.deepPurple[300],
        ),

        fontFamily: 'NotoSansArabic',
        tabBarTheme: const TabBarTheme(),
        iconTheme: const IconThemeData(),
      ),
      home: const HawalnirHome(),
      initialRoute: '/',
      routes: const <String, WidgetBuilder>{},
    ),
  ));
}
