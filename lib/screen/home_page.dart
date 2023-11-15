import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePageWidget extends StatefulWidget {
  const MyHomePageWidget({super.key});

  @override
  State<MyHomePageWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyHomePageWidget> {
  int activeIndex = 0;
  final caroselImages = [
    'assets/images/IMG_20230919_164121.jpg',
    'assets/images/IMG_20230919_164153.jpg',
    'assets/images/IMG_20230919_164234.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/Flag-United-States-of-America.webp',
              )),
        ),
        actions: const [
          Icon(
            Icons.local_fire_department_rounded,
            color: Colors.grey,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.messenger_outline_rounded,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sized(30),
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: caroselImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagePath = caroselImages[index];
                    return buildImage(imagePath, index);
                  },
                  options: CarouselOptions(
                    height: 190,
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                sized(20),
                builderIndicator()
              ],
            ),
            sized(20),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  circleavatarImages(
                      image: "assets/images/download (1).jpg", name: "Milli"),
                  circleavatarImages(
                      image: "assets/images/download.jpg", name: "Lucas"),
                  circleavatarImages(
                      image: "assets/images/images (1).jpg", name: "Steve"),
                  circleavatarImages(
                      image: "assets/images/images (2).jpg", name: "Robin"),
                  circleavatarImages(
                      image: "assets/images/images (3).jpg", name: "Erica"),
                  circleavatarImages(
                      image: "assets/images/images (4).jpg", name: "Eleven"),
                  circleavatarImages(
                      image: "assets/images/images.jpg", name: "Dustin"),
                  circleavatarImages(
                      image:
                          "assets/images/jamie-campbell-bower-movies-e1699844340611.webp",
                      name: "Billi"),
                  circleavatarImages(
                      image:
                          "assets/images/nancy-stranger-things--1509979319-view-1.jpeg",
                      name: "Nancy"),
                  circleavatarImages(
                      image:
                          "assets/images/Sadie-Sink-ccaf4a24-9da2-4a49-a24a-a1a872113692.webp",
                      name: "Max"),
                  circleavatarImages(
                      image:
                          "assets/images/stranger-things-s03e03-46m24s66769f-r-1568214922.jpg",
                      name: "Hargrove"),
                ],
              ),
            ),
            sized(20),
            Column(
              children: [
                ListTile(
                  leading: Image.asset(
                      'assets/images/1000_F_523521133_kUm17yE85qQiGFZfrhcuwGl7NVea6qaW.jpg'),
                  title: const Text(
                    'InstaLesson',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('1-on-1 Lesson with a native teacher'),
                  trailing: const Text(
                    'Paid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                sized(5),
                ListTile(
                  leading: Image.asset(
                      'assets/images/1000_F_322271543_rVNwolvw0o6c8ZkMjMmzmndGuMK3in6P.jpg'),
                  title: const Text(
                    'InstaMatch',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      const Text('Unlimited Practice with other students'),
                  trailing: const Text(
                    'Free',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                sized(10),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt_outlined),
                    label: const Text('Filter'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.list_rounded),
                    label: const Text('InstaLog'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                  ),
                ),
                sized(10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                      fixedSize:
                          MaterialStateProperty.all(const Size(200, 50))),
                  child: const Text("Start Instamatching"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox sized(double value) {
    return SizedBox(
      height: value,
    );
  }

  Column circleavatarImages({required String image, required String name}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 13,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        )
      ],
    );
  }

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: caroselImages.length,
        effect: const WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      );

  Widget buildImage(String imagepath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 60, 255, 0),
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
