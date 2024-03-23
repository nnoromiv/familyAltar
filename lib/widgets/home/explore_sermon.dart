import 'package:flutter/material.dart';

class ExploreSermon extends StatefulWidget {
  const ExploreSermon({super.key});

  @override
  State<ExploreSermon> createState() => _ExploreSermonState();
}

class _ExploreSermonState extends State<ExploreSermon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 23, 30, 33),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/altar.jpg',
                                fit: BoxFit.cover, // Corrected placement
                                width: 200.0, // Specify width
                                height: 120.0, // Specify height
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          const Text(
                            'Thursday Faith Clinic',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/altar.jpg',
                                fit: BoxFit.cover, // Corrected placement
                                width: 200.0, // Specify width
                                height: 120.0, // Specify height
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          const Text(
                            'Sunday Service',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                  // Add more Cards here for other sermons as needed.
                ],
              ),
            ),
          ],
        ),
      );
  }
}
