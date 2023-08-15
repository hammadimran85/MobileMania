import 'package:aboutmobiles/screens/tabs.dart';
// import 'package:aboutmobiles/screens/tabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 60, 108, 220),
);
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: kColorScheme,
  textTheme: GoogleFonts.aBeeZeeTextTheme().copyWith(
    titleLarge: TextStyle(
      // fontWeight: FontWeight.bold,
      color: kColorScheme.primary,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: TextStyle(
      color: kColorScheme.primary,
      fontSize: 17,
      fontWeight: FontWeight.normal,
    ),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(253, 253, 253, 255),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const TabsScreen(),
    );
  }
}
