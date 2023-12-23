import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonsPage extends StatefulWidget {
  const SkeletonsPage({super.key});

  @override
  State<SkeletonsPage> createState() => _SkeletonsPageState();
}

class _SkeletonsPageState extends State<SkeletonsPage> {
  var _isLoading = true;

  @override
  void initState() {
    super.initState();
    changeState();
  }

  void changeState() async {
    _isLoading = true;
    update();
    await Future.delayed(const Duration(milliseconds: 2500));
    _isLoading = false;
    update();
  }

  void update() => setState(() {});

  Widget _skeletonView() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              borderRadius: BorderRadius.circular(7),
              height: MediaQuery.of(context).size.width - 30,
            ),
          ),
          SkeletonListTile(
            verticalSpacing: 12,
            leadingStyle: const SkeletonAvatarStyle(
                width: 64, height: 64, shape: BoxShape.circle),
            titleStyle: SkeletonLineStyle(
                height: 16,
                minLength: 200,
                randomLength: true,
                borderRadius: BorderRadius.circular(12)),
            subtitleStyle: SkeletonLineStyle(
                height: 12,
                maxLength: 200,
                randomLength: true,
                borderRadius: BorderRadius.circular(12)),
            hasSubtitle: true,
          ),
          const SizedBox(height: 10),
          SkeletonParagraph(
            style: const SkeletonParagraphStyle(
              lines: 6,
            ),
          )
        ],
      );
  Widget _contentView() => Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width - 30,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
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
                      '개발하는남자',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
          const SizedBox(height: 10),
          const Text(
            '은은한 달빛 아래 부드러운 바람이 에메랄드빛 초원에 속삭이며 자스민 꽃의 달콤한 향기를 실었습니다. 저 멀리 외로운 올빼미 한 마리가 울부짖고 그 울음소리가 고요한 밤에 메아리쳤습니다. 별들은 먹빛 하늘에 다이아몬드처럼 반짝였습니다',
            style: TextStyle(fontSize: 17, height: 1.8),
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skeletons')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Skeleton(
          isLoading: _isLoading,
          skeleton: _skeletonView(),
          child: _contentView(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        child: const Icon(Icons.replay),
      ),
    );
  }
}
