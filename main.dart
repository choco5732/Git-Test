import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tithe',
      home: DetailPageJJY(),
    );
  }
}

class DetailPageJJY extends StatelessWidget {
  DetailPageJJY({super.key});

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "십일조",
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              //ROW 행렬 정렬
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                // CilpRRect 를 통해 이미지에 곡선 border 생성

                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // 이미지
                  child: Image.network(
                    'https://ifh.cc/g/28FsqF.jpg',
                    width: 200,
                    height: 245,
                    fit: BoxFit.cover,
                  ),
                ),

                //간략 자기소개
                Expanded(
                  child: Column(
                    children: [
                      Divider(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "  이름 : 장재용",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "  성격 : 성실함",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "  MBTI : ISFP ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          " 관심사 : 자동차",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0), // 윗 공간에 여백주기
            padding: const EdgeInsets.all(10.0), //텍스트 칸 여백주기
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
                width: 5,
              ), //테두리 나타내기
            ),
            width: MediaQuery.of(context).size.width * 1,
            child: Text(
              "안녕하세요\n개발꿈나무 장재용입니다.\n저는 헬스와 요리하기를 좋아합니다.\n캠프 수료날까지 포기하지 않고 서로 공부하다 힘든거 공유하면서 다들 원하는기업 취업합시다!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
