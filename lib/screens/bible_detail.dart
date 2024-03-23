import 'package:flutter/material.dart';

class BibleDetail extends StatelessWidget {
  final String verseId;
  final Map<String, dynamic> verse;
  final Map<String, dynamic> allContent;

  const BibleDetail({
        super.key,
        required this.verseId,
        required this.verse,
        required this.allContent
      });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> verseData = verse['data'];

    // Text('Item ID: $verseId, ${verse['data']}, $allContent')
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 8.0, right: 8.0),
          child: Column(
            children: [
              Center(
                child: Text('${verseData["reference"]}', style: const TextStyle(
                  color: Colors.indigo,
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
