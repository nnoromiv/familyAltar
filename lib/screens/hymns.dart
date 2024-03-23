import 'package:flutter/material.dart';

class Hymns extends StatefulWidget {
  const Hymns({ super.key });

  @override
  State<Hymns> createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hymns', style: TextStyle(
            fontFamily: 'Poppins'
          )),
    );
  }
}