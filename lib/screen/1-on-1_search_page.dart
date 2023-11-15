import 'package:flutter/material.dart';

class OneOnOnePageScreen extends StatelessWidget {
  const OneOnOnePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' New Teachers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              teachersList(
                  image: "assets/images/download (1).jpg", text: "Milli"),
              teachersList(image: "assets/images/download.jpg", text: "Lucas"),
              teachersList(
                  image: "assets/images/images (1).jpg", text: "Steve"),
              teachersList(
                  image: "assets/images/images (2).jpg", text: "Robin"),
              teachersList(
                  image: "assets/images/images (3).jpg", text: "Erica"),
              teachersList(
                  image: "assets/images/images (4).jpg", text: "Eleven"),
              teachersList(image: "assets/images/images.jpg", text: "Dustin"),
              teachersList(
                  image:
                      "assets/images/jamie-campbell-bower-movies-e1699844340611.webp",
                  text: "Billi"),
              teachersList(
                  image:
                      "assets/images/nancy-stranger-things--1509979319-view-1.jpeg",
                  text: "Nancy"),
              teachersList(
                  image:
                      "assets/images/Sadie-Sink-ccaf4a24-9da2-4a49-a24a-a1a872113692.webp",
                  text: "Max"),
              teachersList(
                  image:
                      "assets/images/stranger-things-s03e03-46m24s66769f-r-1568214922.jpg",
                  text: "Hargrove"),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    listview(
                        image1:
                            'assets/images/nancy-stranger-things--1509979319-view-1.jpeg',
                        image2:
                            'assets/images/Flag-United-States-of-America.webp',
                        text1: 'Nancy',
                        text2: '     4.98(115)',
                        text3:
                            'Hi, i earned my Bachelor of Science in Business Management before raising four childern.\n Education is the important and powerful tool to change the world.'),
                    const Divider(),
                    listview(
                      image1:
                          'assets/images/Sadie-Sink-ccaf4a24-9da2-4a49-a24a-a1a872113692.webp',
                      image2:
                          'assets/images/main-qimg-e6efc37fec151f4196fe8e7b76f0a744.webp',
                      text1: 'Max',
                      text2: '     4.78(188)',
                      text3:
                          'Its nice to meet you! My name is T.sebe I am a good listener with great communication skills.\n I have 2 years teaching expirience. i have better skilss in different area.',
                    ),
                    const Divider(),
                    listview(
                      image1: 'assets/images/images (4).jpg',
                      image2:
                          'assets/images/main-qimg-7b6741b8bb02e3f038d9f90f2c1fad08.webp',
                      text1: '      Milli',
                      text2: '     4.98s',
                      text3:
                          'Hi, iam Pratrica and i am a certified TEFL teacher,i hold a international level certificate of be3st teacher excellence award.',
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column teachersList({
    String? image,
    String? text,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 30,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          text!,
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Container listview(
      {required String image1,
      String? image2,
      String? text1,
      String? text2,
      String? text3}) {
    return Container(
      child: Column(
        children: [
          Container(),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image1),
                radius: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset(
                  image2!,
                  height: 30,
                  width: 30,
                ),
              ),
              Column(
                children: [
                  Container(
                      child: Text(
                    text1!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(text2!)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(alignment: Alignment.topLeft, child: Text(text3!))
        ],
      ),
    );
  }
}
