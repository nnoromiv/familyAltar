import 'package:familyaltar/widgets/book.dart';
import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: const Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Book(
                    bookAuthor: 'Christian Nnorom',
                    bookImageLink: 'assets/altar.jpg',
                    bookTitle: "How to Pray",
                  ),
                  Book(
                    bookAuthor: 'Rev. T.D Uka',
                    bookImageLink: 'assets/altar.jpg',
                    bookTitle: 'Family Altar',
                  ),
                  Book(
                    bookAuthor: 'Elder Emmanuel Nnorom',
                    bookImageLink: 'assets/altar.jpg',
                    bookTitle: 'Family Altar',
                  ),
                 ],
              ),
            ),
          ],
        ),
      );
  }
}
