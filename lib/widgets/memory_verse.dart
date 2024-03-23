import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MemoryVerse extends StatefulWidget {
  const MemoryVerse({super.key});

  @override
  State<MemoryVerse> createState() => _MemoryVerseState();
}

class _MemoryVerseState extends State<MemoryVerse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.blue, // Color of the border
            width: 5.0, // Width of the border
          ),
        ),
      ),
      child: const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // This removes the border radius
          ),
          margin: EdgeInsets.all(0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bubble_chart,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'MEMORIZE',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti!',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.indigo,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Psalm 103:1',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                )
              ],
            ),
          )),
    );
  }
}
