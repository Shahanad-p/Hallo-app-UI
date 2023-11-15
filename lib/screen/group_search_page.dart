import 'package:flutter/material.dart';

class GroupPageScreen extends StatefulWidget {
  const GroupPageScreen({Key? key});

  @override
  State<GroupPageScreen> createState() => _GroupPageScreenState();
}

class _GroupPageScreenState extends State<GroupPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              buildTopButton(
                  buttonText: "Time", icon: Icons.keyboard_arrow_down),
              buildTopButton(
                  buttonText: "Level", icon: Icons.keyboard_arrow_down),
              buildTopButton(
                  buttonText: "Topic", icon: Icons.keyboard_arrow_down),
            ],
          ),
          const SizedBox(height: 20),
          mainContainer(
            image:
                'assets/images/motivational_interview_GettyImages-1142966869-red_.jpg',
            text1: 'Interview Preparation',
            text2: 'Mon at 2:30 PM Work.B1',
            circleAvatar: 'assets/images/download (1).jpg',
            text3: 'Milli',
            text4: 'Some additional text',
            text5: '⭐ 4.35(7)',
            icon1: Icons.star,
            icon2: Icons.more_vert,
          ),
          mainContainer(
            image: 'assets/images/What-to-bring-to-job-interview-Feature.png',
            text1: 'Work with us',
            text2: 'Sat at 7:00 PM Work.A1',
            circleAvatar:
                'assets/images/nancy-stranger-things--1509979319-view-1.jpeg',
            text3: 'Nancy',
            text4: 'Some additional text',
            text5: '⭐ 4.50(3)',
            icon1: Icons.star,
            icon2: Icons.more_vert,
          ),
        ],
      ),
    );
  }

  Column mainContainer({
    required String image,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required IconData icon1,
    required IconData icon2,
    required String circleAvatar,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(11),
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
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(circleAvatar),
                ),
                Text(
                  text3,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text5,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(icon1, color: Colors.grey),
                    Icon(icon2, color: Colors.grey),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Container buildTopButton(
      {required String buttonText, required IconData icon}) {
    return Container(
      height: 38,
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 220, 220),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(buttonText),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
