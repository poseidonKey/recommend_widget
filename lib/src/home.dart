import 'package:dev_man_recommend_flutter_widget/src/back_drop_filter/back_drop_filter_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/hero/hero_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/skeletons/skeletons_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void gotoPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('추천 위젯 10종')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const SkeletonsPage());
              },
              child: const Text('Skeletons'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const HeroPage());
              },
              child: const Text('Hero'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const BackDropFilterPage());
              },
              child: const Text('BackdropFilter'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('cached_network_image'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('pull_to_refresh'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('flutter_slide_drawer'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('flutter_spinkit'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('flutter_app_badger'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('google_fonts'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('carousel_slider'),
            ),
          ],
        ),
      ),
    );
  }
}
