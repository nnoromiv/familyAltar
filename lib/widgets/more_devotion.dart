import 'package:flutter/material.dart';

class MoreDevotion extends StatefulWidget {
  final String title;
  final String subTitle;
  final bool hasLink;
  final IconData icon;
  
  const MoreDevotion({
    super.key,
    required this.title,
    required this.subTitle,
    this.hasLink = true, 
    required this.icon,
  });

  @override
  State<MoreDevotion> createState() => _MoreDevotionState();
}

class _MoreDevotionState extends State<MoreDevotion> {
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
      child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // This removes the border radius
          ),
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      widget.icon,
                      color: Colors.indigo,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                widget.hasLink
                    ? Text(
                        widget.subTitle,
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )
                    : Text(
                        widget.subTitle,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.indigo,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0),
                      )
              ],
            ),
          )),
    );
  }
}
