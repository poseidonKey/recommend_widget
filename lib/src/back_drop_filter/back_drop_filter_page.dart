import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterPage extends StatefulWidget {
  const BackDropFilterPage({super.key});

  @override
  State<BackDropFilterPage> createState() => _BackDropFilterPageState();
}

class _BackDropFilterPageState extends State<BackDropFilterPage> {
  bool showFilter = false;

  void showPopupMessage(bool ck) {
    setState(() {
      showFilter = ck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackDropFilter'),
      ),
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              showPopupMessage(true);
            },
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/avatar.png',
                  ),
                  const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "IU 나무위키",
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 10),
                          Text(
                              "2008년 9월 18일, 중학교 3학년이던 만 15세의 나이에 가수로 데뷔했다. 예명인 '아이유'는 '너와 내가 음악으로 하나가 된다'라는 뜻을 가지고 있다.[54] 매력적인 음색과 뛰어난 작사ㆍ작곡 능력을 바탕으로 솔로 아이돌이자 아티스트로서 십수 년째 사랑 받고 있을 뿐 아니라[55] 2012년 이래로 매년 국내 및 아시아의 주요 도시에서 대규모 콘서트를 진행하며 공연자로서도 활발히 활동 중이다.")
                        ],
                      )),
                ],
              ),
            ),
          ),
          if (showFilter)
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: GestureDetector(
                  onTap: () {
                    showPopupMessage(false);
                  },
                  child: Container(
                    height: 200.0,
                    color: Colors.black.withOpacity(0),
                    child: const Center(
                      child: Text(
                        'UI Backdrop Filter',
                        style: TextStyle(color: Colors.pink, fontSize: 24.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
