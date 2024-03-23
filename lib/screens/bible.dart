import 'package:chips_choice/chips_choice.dart';
import 'package:familyaltar/api.dart';
import 'package:familyaltar/screens/bible_detail.dart';
import 'package:familyaltar/screens/devotional.dart';
import 'package:familyaltar/widgets/loading.dart';
import 'package:flutter/material.dart';

class Bible extends StatefulWidget {
  const Bible({super.key});

  @override
  State<Bible> createState() => _BibleState();
}

class _BibleState extends State<Bible> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final String kjv = 'de4e12af7f28f599-02';
  String selectedBook = '';
  String selectedChapter = '';
  String selectedVerse = '';
  String selectedPassage = '';
  List<dynamic> books = [];
  List<dynamic> chapters = [];
  List<dynamic> verses = [];
  Map<String, dynamic> passage = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    handleBooks();
  }

  Future<void> handleBooks() async {
    try {
      final response = await fetchBooks(
          kjv); // Assuming fetchBooksApi is a method that fetches books.
      setState(() {
        books = response['data'] ?? [];
      });
    } catch (e) {
      logger.d(
          "Failed to fetch books: $e"); // Consider using a logger for better logging
    }
  }

  Future<void> handleChapter(String bookId) async {
    try {
      final response = await fetchChapters(kjv,
          bookId); // Assuming fetchChaptersApi is a method that fetches chapters.
      setState(() {
        chapters = response['data'] ?? [];
        selectedBook = bookId;
      });
      _tabController.animateTo(1);
    } catch (e) {
      logger.d("Failed to fetch chapters: $e");
    }
  }

  Future<void> handleVerse(String chapterId) async {
    try {
      final response = await fetchVerses(kjv,
          chapterId); // Assuming fetchVersesApi is a method that fetches verses.
      setState(() {
        verses = response['data'] ?? [];
        selectedChapter = chapterId;
      });
      logger.d(response);
      _tabController.animateTo(2);
    } catch (e) {
      logger.d("Failed to fetch verses: $e");
    }
  }

  Future<void> handleVerseChoice(String verseId) async {
    try {
      final response = await fetchVerse(kjv, verseId);
      final allContent = await fetchChapter(kjv, selectedChapter);

      setState(() {
        passage = response;
      });

      // logger.d(response);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BibleDetail(
            verseId: verseId,
            verse: passage,
            allContent: allContent
          ),
        ),
      );
    } catch (e) {
      logger.d("Failed to fetch verses: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bible'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Books'),
            Tab(text: 'Chapters'),
            Tab(text: 'Verses'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildBooksTab(),
          buildChaptersTab(),
          buildVersesTab(),
        ],
      ),
    );
  }

  Widget buildBooksTab() => books.isEmpty
      ? const Loading(load: true)
      : SingleChildScrollView(
          child: Column(
            children: [
              buildBookSection('Old Testament', books.take(39)),
              buildBookSection('New Testament', books.skip(39)),
            ],
          ),
        );

  Widget buildBookSection(String title, Iterable<dynamic> books) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 20.0)),
          ),
          ChipsChoice<dynamic>.single(
            value: selectedBook,
            wrapped: true,
            onChanged: (val) => handleChapter(val),
            choiceStyle: C2ChipStyle.outlined(
              color: Colors.indigo,
            ),
            choiceItems: C2Choice.listFrom<dynamic, dynamic>(
              source: books.toList(),
              value: (i, v) => v['id'],
              label: (i, v) => v['name'],
            ),
          ),
        ],
      );

  Widget buildChaptersTab() => chapters.isEmpty
      ? const Center(
          child: Text(
            'Please select a book',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
        )
      : SingleChildScrollView(
          child: ChipsChoice<dynamic>.single(
            value: selectedChapter,
            wrapped: true,
            choiceStyle: C2ChipStyle.outlined(
              color: Colors.indigo,
            ),
            onChanged: (val) => handleVerse(val),
            choiceItems: C2Choice.listFrom<dynamic, dynamic>(
              source: chapters.sublist(1),
              value: (i, v) => v['id'],
              label: (i, v) => v['number'].toString(),
            ),
          ),
        );

  Widget buildVersesTab() => verses.isEmpty
      ? const Center(
          child: Text(
            'Please select a chapter',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
        )
      : SingleChildScrollView(
          child: ChipsChoice<dynamic>.single(
            value: selectedVerse,
            wrapped: true,
            choiceStyle: C2ChipStyle.outlined(
              color: Colors.indigo,
            ),
            onChanged: (val) => handleVerseChoice(val),
            choiceItems: C2Choice.listFrom<dynamic, dynamic>(
              source: verses,
              value: (index, item) => item['id'],
              label: (index, item) => (index + 1).toString(),
            ),
          ),
        );
}
