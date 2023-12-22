import 'package:flutter/material.dart';

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail View'),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'iu_hero_tag',
            child: Image.asset(
              'assets/images/avatar.png',
            ),
          )
        ],
      ),
    );
  }
}
