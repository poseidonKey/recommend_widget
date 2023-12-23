import 'dart:math';

import 'package:dev_man_recommend_flutter_widget/src/back_drop_filter/back_drop_filter_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/cached_network_image/cached_network_image_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/carousel_slider/carousel_slider_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/google_fonts/google_fonts_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/hero/hero_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/pull_to_refresh/pull_to_refresh_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/skeletons/skeletons_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/slide_drawer/slide_drawer_page.dart';
import 'package:dev_man_recommend_flutter_widget/src/spinkit/spinkit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';

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
              onPressed: () {
                gotoPage(context, const CachedNetworkImagePage());
              },
              child: const Text('cached_network_image'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const PullToRefreshPage());
              },
              child: const Text('pull_to_refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const SpinkitPage());
              },
              child: const Text('flutter_spinkit'),
            ),
            ElevatedButton(
              onPressed: () {
                var value = Random().nextInt(100);
                FlutterAppBadger.updateBadgeCount(value);
              },
              child: const Text('flutter_app_badger'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, GoogleFontsPage());
              },
              child: const Text('google_fonts'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, CarouselSliderPage());
              },
              child: const Text('carousel_slider'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const SlideDrawerPage());
              },
              child: const Text('flutter_slide_drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
