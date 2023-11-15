import 'package:flutter/material.dart';

class MyCoursesWidget extends StatefulWidget {
  const MyCoursesWidget({Key? key});

  @override
  State<MyCoursesWidget> createState() => _MyCoursesWidgetState();
}

class _MyCoursesWidgetState extends State<MyCoursesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text(
              'Course',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                buildTopButton(buttonText: "All"),
                buildTopButton(buttonText: "Career"),
                buildTopButton(buttonText: "Dream job"),
                buildTopButton(buttonText: "Life style"),
              ],
            ),
            const SizedBox(height: 20),
            mainContainer(
              image:
                  'assets/images/student-led-study-group-library-id842920176.jpg',
              text1: 'How to be at the top 1% work',
              text2: 'Learn how to become and extra ordinary',
              text3: 'A2-B2-8 lessons ',
            ),
            mainContainer(
              image:
                  'assets/images/young-businesswoman-with-co-workers_1098-1776.avif',
              text1: 'Around the world',
              text2: 'learn all the latest things',
              text3: 'B1-C2-8 lessons',
            ),
            mainContainer(
              image: 'assets/images/GettyImages-588266018-1.webp',
              text1: 'Entire county ',
              text2: 'We are spreading soon',
              text3: 'C1-A2-7 lessons',
            ),
          ],
        ),
      ),
    );
  }

  Column mainContainer({
    required String image,
    required String text1,
    required String text2,
    required String text3,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 400,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text1,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 7),
                Text(
                  text2,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text3,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Container buildTopButton({required String buttonText}) {
    return Container(
      height: 35,
      width: 70,
      margin: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 220, 220),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(buttonText),
          ],
        ),
      ),
    );
  }
}
