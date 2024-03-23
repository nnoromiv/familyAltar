import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;

  const Profile({super.key, required this.name});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 30.0, bottom: 15.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome ${
                widget.name.length > 10 ? '${widget.name.substring(0,8)}...' : widget.name
              }',
              style: const TextStyle(fontFamily: 'Poppins', fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                      'assets/face.jpg'),
                ))
          ],
        ),
      ),
    );
  }
}
