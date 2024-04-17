import 'package:flutter/material.dart';
import 'package:job_hunting/screens/home/widgets/home_app_bar.dart';
import 'package:job_hunting/screens/home/widgets/job_list.dart';
import 'package:job_hunting/screens/home/widgets/search_card.dart';
import 'package:job_hunting/screens/home/widgets/tag_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HomeAPpBar(),
                const SearchCard(),
                const TagsList(),
                Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: JobList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}