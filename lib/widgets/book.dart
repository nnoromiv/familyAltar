import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  final String bookTitle;
  final String bookAuthor;
  final String bookImageLink;
  const Book({super.key, required this.bookTitle, required this.bookAuthor, required this.bookImageLink});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  widget.bookImageLink,
                  fit: BoxFit.cover, // Corrected placement
                  width: 200.0, // Specify width
                  height: 300.0, // Specify height
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              widget.bookTitle.length > 40 ? '${widget.bookTitle.substring(0,20)}...' : widget.bookTitle,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              widget.bookAuthor.length > 20 ? '${widget.bookAuthor.substring(0,19)}...' : widget.bookAuthor,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.blue),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
