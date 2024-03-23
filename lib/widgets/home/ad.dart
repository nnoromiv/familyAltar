import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
const Ad({ super.key });

  @override
  Widget build(BuildContext context){
    return Card(
      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                      fit: BoxFit.cover,
                      'assets/altar.jpg'),
                )),
                const SizedBox(
                  height: 10.0,
                ),
                const Text('Family Altar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.blue
                ),)
          ],
        ),
      )
    );
  }
}