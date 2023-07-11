import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/main.dart';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    required this.imageUrl,
    required this.product,
    required this.sport,
    required this.mbti,
  }) : super(key: key);

  final String imageUrl;
  final String product;
  final String sport;
  final String mbti;
  // 이미지를 담을 변수

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CilpRRect 를 통해 이미지에 곡선 border 생성
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          // 이미지
          child: Image.network(
            widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Text(
                widget.sport, //'취미: 농구',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                widget.mbti, // 'MBTI: ISTP',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPageKKW(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.plus,
                          color: Colors.black,
                          size: 16,
                        ),
                        Text(
                          '더보기',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                  // 빈 칸
                  // 하트 아이콘
                  // '1'
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
