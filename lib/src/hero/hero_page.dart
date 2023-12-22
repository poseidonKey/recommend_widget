import 'package:dev_man_recommend_flutter_widget/src/hero/hero_detail_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/hero/none_hero_detail_page.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero')),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HeroDetailPage()));
              },
              child: Hero(
                tag: 'iu_hero_tag',
                child: Image.asset(
                  'assets/images/avatar.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            const Text('Hero 사용 효과'),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoneHeroDetailPage()));
              },
              child: Image.asset(
                'assets/images/avatar.png',
                width: 200,
                height: 200,
              ),
            ),
            const Text('Hero 사용하지 않음'),
          ],
        ),
      ),
    );
  }
}
