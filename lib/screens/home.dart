import 'package:familyaltar/widgets/home/ad.dart';
import 'package:familyaltar/widgets/home/books.dart';
import 'package:familyaltar/widgets/home/explore_sermon.dart';
import 'package:familyaltar/widgets/home/profile.dart';
import 'package:familyaltar/widgets/today_devotion.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Profile(
              name: 'Nnorom Christian',
            ),
            TodayDevotion(
              date: DateTime.now(),
              title: 'Now',
              message: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti!',
            ),
            const Ad(),
            const Text(
              'Explore Sermons',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            const ExploreSermon(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Books',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue
                  ),
                ),
              ],
            ),
            const Books(),
            ],
        ),
      ),
      );
  }
}
