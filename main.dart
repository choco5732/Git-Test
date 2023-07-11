import 'package:flutter/material.dart';
import 'package:miniproject/feed.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Team : 십일조",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // appbar title을 중앙으로 위치해주는 코드
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
          Image.network(
              "https://image.kmib.co.kr/online_image/2015/0922/201509220011_23110923252668_1.jpg"),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                //==============팀 소개 버튼================
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TeamPage(),
                      ),
                    );
                  },
                  child: Text(
                    "팀 소개",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                //=============팀원 소개 버튼 =============
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MemberSummaryPage(),
                      ),
                    );
                  },
                  child: Text(
                    "팀원 소개",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      /*
      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => testTeamPage(
                              index: index,
                            ),
                          ),
                        );
      */
    );
  }
}

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "십일조 소개",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              const Divider(height: 5),
              Card(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.network(
                      "https://i.postimg.cc/QNwJz2j9/111.jpg",
                      width: double.infinity,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    const Text(
                      "11조의 십일조란?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(height: 5),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "본래 의미는 종교 단체를 지원할 목적으로 납부하는 수입의 10분의 1을 가리키지만 저희조 내에선 본인이 공부한 내용중에서 10분의 1이라도 기여하자 라는 의미로 지어졌습니다.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Divider(height: 20),
              Card(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.network(
                      "https://i.postimg.cc/vmftJqSb/image.jpg",
                      width: double.infinity,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    const Text(
                      "팀의 규칙",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(height: 5),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "상호간 '님'자 사용하기",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "모르는거 서로 물어보기",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "입실, 퇴실시간때 서로 인사하기",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "자리비울때 서로 알려주기",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const Divider(height: 20),
              Card(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.network(
                      "https://i.postimg.cc/FKdC6KNk/image.jpg",
                      width: double.infinity,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    const Text(
                      "팀의 목표",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(height: 5),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "팀 이름에 걸맞게 배운게 있으면 조원끼리 공유하고, 꿈은 크게 잡으라는 말이 있듯 '네카라쿠배' 취업이나 그에 버금가는 회사창업을 목표로 열심히 합시다.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MemberSummaryPage extends StatelessWidget {
  const MemberSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://ifh.cc/g/kDaKF7.jpg",
      "https://ifh.cc/g/tVyHZn.jpg",
      "https://ifh.cc/g/LsrBHx.jpg",
      "https://ifh.cc/g/28FsqF.jpg",
      "https://ifh.cc/g/1xXkcs.jpg",
    ];
    final List<String> productNames = [
      "이름: 정현식",
      "이름:정선호",
      "이름:권경운",
      "이름:장재용",
      "이름:한상철",
    ];
    final List<String> Sports = [
      "취미: 농구하기",
      "취미: 노래부르기",
      "취미: 노래방, 헬스",
      "취미: 헬스, 요리",
      "취미: 게임, 음주",
    ];
    final List<String> Mbtis = [
      "MBTI: ISTP",
      "MBTI: ISFP",
      "MBTI: ISFP",
      "MBTI: ISFP",
      "MBTI: ISTP",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          '십일조 ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: images.length, // 이미지 개수만큼 보여주기
          itemBuilder: (context, index) {
            final image = images[index];
            final productName = productNames[index];
            final Sport = Sports[index];
            final Mbti = Mbtis[index]; // index에 해당하는 이미지
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Feed(
                  imageUrl: image,
                  product: productName,
                  sport: Sport,
                  mbti: Mbti), // imageUrl 전달
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}

class DetailPageKKW extends StatelessWidget {
  DetailPageKKW({super.key});

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
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
                    'https://i.namu.wiki/i/ZK5KQRHUtu4xDpDJkYGimSK6rzlG1H-LNGeMb9se6XWZcmx4GXSMvwKe946EaCXzIwX2wCibID24I1WKTgwPkeVfBP_5U2DCfIWl1tX_Xq8hXdNYY1yafieuSyZiS9EW3S_0lzcBTDTH41scRtysaA.webp',
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
                          "  이름 : 권경운",
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
                          "  성격 : 내향적",
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
                          "  관심사 : 등등 ",
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
              border: Border.all(color: Colors.black38, width: 5), //테두리 나타내기
            ),
            width: MediaQuery.of(context).size.width * 1,
            child: Text(
              "자기소개 자기소개 자기소개 자기소개\n자기소개 자기소개 자기소개 자기소개\n자기소개",
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
