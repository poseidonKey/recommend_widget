import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsPage extends StatefulWidget {
  GoogleFontsPage({super.key});

  @override
  State<GoogleFontsPage> createState() => _GoogleFontsPageState();
}

class _GoogleFontsPageState extends State<GoogleFontsPage> {
  @override
  void initState() {
    super.initState();
    GoogleFonts.asMap().forEach((key, value) {
      keys.add(key);
      values.add(value);
    });
  }

  List<String> keys = [];
  List<TextStyle Function({double fontSize})> values = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GoogleFontsPage')),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                keys[index].toString(),
                style: values[index](fontSize: 25),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: GoogleFonts.asMap().length),
    );
  }
}
