import 'package:flutter/material.dart';
import 'package:project3/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
Widget build(BuildContext context) {
bool _iconBool = false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme =ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
);

ThemeData _DarkTheme =ThemeData(
  primarySwatch: Colors.grey,
  brightness: Brightness.dark,
);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Light & Dark Theme"),
        
      ),
      body: Center(
       child: Stack(
         children: [ElevatedButton(onPressed: (){
          themeProvider.switchTheme();
         }, child: Text("Switch Theme")),
         ]
       ),
      ),
    );
  }
}