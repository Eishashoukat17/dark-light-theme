import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project3/homepage.dart';
import 'package:project3/provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeProvider.theme,
        home: HomePage(),
        );
      },
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   theme: provider.theme;
      //   home: HomePage(),
      // ),
    );
  }
}