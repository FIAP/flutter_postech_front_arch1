import 'package:flutter/material.dart';
import 'package:google_bookmark/screens/dashboard.dart';

void main() {
  runApp(const GoogleBookmark());
}

class GoogleBookmark extends StatelessWidget {
  const GoogleBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Bookmark",
      theme: ThemeData.light(useMaterial3: true),
      home: const Dashboard(),
    );
  }
}
