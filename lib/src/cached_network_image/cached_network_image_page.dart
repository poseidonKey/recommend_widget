import 'package:dev_man_recommend_flutter_widget/src/cached_network_image/cached_network_image_view.dart';
import 'package:dev_man_recommend_flutter_widget/src/cached_network_image/image_network_image_view.dart';
import 'package:flutter/material.dart';

class CachedNetworkImagePage extends StatelessWidget {
  const CachedNetworkImagePage({super.key});

  void gotoPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cached Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const CachedNetworkImageView());
              },
              child: const Text('CachedNetworkImage'),
            ),
            ElevatedButton(
              onPressed: () {
                gotoPage(context, const ImageNetworkImageView());
              },
              child: const Text('ImageNetwork'),
            ),
          ],
        ),
      ),
    );
  }
}
