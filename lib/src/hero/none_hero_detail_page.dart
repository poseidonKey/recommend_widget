import 'package:flutter/material.dart';

class NoneHeroDetailPage extends StatelessWidget {
  const NoneHeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('None Hero Detail View'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/avatar.png',
          ),
        ],
      ),
    );
  }
}
