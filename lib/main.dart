import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';
import 'package:flutter/services.dart';
import 'package:kutuphane_masa_takibi/data/courses_items.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';
import 'dart:convert';
import 'package:kutuphane_masa_takibi/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;

  const MyApp({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}


