import 'package:flutter/material.dart';
import '1-on-1_search_page.dart';
import 'group_search_page.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({Key? key}) : super(key: key);

  @override
  State<SearchPageWidget> createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: const Color.fromARGB(222, 221, 223, 218),
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search name or username'),
                  ),
                ),
                const SizedBox(height: 20),
                const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Tab>[
                    Tab(text: 'Group'),
                    Tab(text: '1-on-1'),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      GroupPageScreen(),
                      OneOnOnePageScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
