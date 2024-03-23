import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  final bool load;
  
  const Loading({super.key, required this.load});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // bool isLoading = .load
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.load ? const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.black,
          color: Colors.blue,
        ),
      ) : const SizedBox()
    );
  }
}
