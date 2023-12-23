import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshPage extends StatefulWidget {
  const PullToRefreshPage({super.key});

  @override
  State<PullToRefreshPage> createState() => _PullToRefreshPageState();
}

class _PullToRefreshPageState extends State<PullToRefreshPage> {
  var refrashController = RefreshController(initialRefresh: false);
  void onRefresh() async {
    refrashController.refreshCompleted();
  }

  void onLoading() async {
    refrashController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero')),
      body: SmartRefresher(
        controller: refrashController,
        onRefresh: onRefresh,
        onLoading: onLoading,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (c, i) => const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 32,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '가나다라마바사',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '2023-12-22',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            itemCount: 100,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 15);
            },
          ),
        ),
      ),
    );
  }
}
