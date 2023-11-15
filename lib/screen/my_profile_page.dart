import 'package:flutter/material.dart';

class MyProfileWidget extends StatefulWidget {
  const MyProfileWidget({super.key});

  @override
  State<MyProfileWidget> createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'JERRY',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        const SizedBox(
                          width: 15,
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: Row(
                                children: [
                                  Text(
                                    'Settings',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 27),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.edit),
                                  SizedBox(width: 30),
                                  Text('Edit profile'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.subscriptions),
                                  SizedBox(width: 30),
                                  Text('Subscriptions'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.attach_money),
                                  SizedBox(width: 30),
                                  Text('Transaction History'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.redeem_outlined),
                                  SizedBox(width: 30),
                                  Text('Refer a friend'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star),
                                  SizedBox(width: 30),
                                  Text('Wishlist'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.info),
                                  SizedBox(width: 30),
                                  Text('Help'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.share),
                                  SizedBox(width: 30),
                                  Text('Share my profile'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.settings),
                                  SizedBox(width: 30),
                                  Text('Settings'),
                                ],
                              ),
                            ),
                          ],
                          child: const Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEBbRNLNGn6CwyMcWQe-ahNLIw-XT4fGhxE9FVr4S-l_uvnLL23k8cQND9-ZKJA_qFeNk&usqp=CAU'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          '  0  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Followers')
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text('100',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Following')
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text('B1',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Level')
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Text('Daily41',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    Image(
                        height: 25,
                        width: 25,
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/008/296/098/non_2x/uae-flag-icon-isolated-on-white-background-free-vector.jpg')),
                    Text('United Arab Emirates')
                  ],
                ),
                const Column(
                  children: [
                    Image(
                      height: 40,
                      width: 40,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCDCSulQkFI99_uOBzfmaYr26zK2yxdMa49Q&usqp=CAU'),
                    ),
                    Text('⭐ 4.87(2)')
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(231, 234, 233, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 110,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('👤1-on-1'),
                                Text('0/o min'),
                                Text(
                                  'left this week',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('👥 Group'),
                                Text('0/o classes'),
                                Text(
                                  'left this week',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Resets weekly at 5:30 AM on Sunday ⓘ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 114, 111, 111)),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 20),
                const ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.black,
                      ),
                      Icon(Icons.bar_chart),
                      Icon(Icons.play_arrow_outlined)
                    ],
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upcoming 0 classes'),
                    SizedBox(height: 10),
                    Text('Complete your profile'),
                  ],
                ),
                const Row(
                  children: [
                    Text('2 OF 4 ', style: TextStyle(color: Colors.orange)),
                    Text('COMPLETE', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.10),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.person_outline, size: 50),
                            const Text('Add your Bio'),
                            const Text(
                              'Describe yoursef to followers',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Add Bio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 30,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.10),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.interests_outlined, size: 50),
                            const Text(
                              'Add your interests',
                            ),
                            const Text(
                              'Show your interests',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Add Interests',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.10),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.bar_chart_rounded, size: 50),
                            const Text('AI Proficiency test'),
                            const Text(
                              'Asses your current level',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Take Test',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(231, 234, 233, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.10),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.people_outline, size: 50),
                            const Text('Follow 5 people'),
                            const Text(
                              'Connect with people and expand your network',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Find Teachers',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(231, 234, 233, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1173922017/vector/simple-orange-and-red-flame-icon-or-symbol.jpg?s=170667a&w=0&k=20&c=V8jbMGRfwxZ1uX4Xb8lRZxz_6LWizdjyOzKmLv576fw='),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
