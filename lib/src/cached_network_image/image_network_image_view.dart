import 'package:flutter/material.dart';

class ImageNetworkImageView extends StatelessWidget {
  const ImageNetworkImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.network(
        "https://images.unsplash.com/photo-1695982207391-13944e9a8a5e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
    );
  }
}
