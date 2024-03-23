import 'package:familyaltar/widgets/memory_verse.dart';
import 'package:familyaltar/widgets/more_devotion.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayDevotion extends StatefulWidget {
  final DateTime date;
  final String title;
  final String message;
  final bool cut;
  final bool extend;

  const TodayDevotion({
    super.key,
    required this.date,
    required this.title,
    required this.message,
    this.cut = true,
    this.extend = false,
  });

  @override
  State<TodayDevotion> createState() => _TodayDevotionState();
}

class _TodayDevotionState extends State<TodayDevotion> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 23, 30, 33),
      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('yyyy-MM-dd – kk:mm')
                  .format(widget.date), // Custom format
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 16.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            widget.extend ? 
              const Column(
                children: [
                  MemoryVerse(),
                  SizedBox(
                    height: 20.0,
                  ),
                  MoreDevotion(
                    icon: Icons.menu_book_rounded,
                    title: 'READ',
                    subTitle: 'Psalm 103:1 - 4',
                  )
                ],
              )
            : const SizedBox(width: 0.0),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.cut && widget.message.length > 250
                  ? '${widget.message.substring(0, 200)}...'
                  : widget.message,
              style:
                  const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            widget.extend
                ? const SizedBox(
                    width: 10.0,
                  )
                : const Text(
                    'Continue Reading',
                    style: TextStyle(color: Colors.blue, fontFamily: 'Poppins'),
                  ),
            widget.extend ? 
              const Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  MoreDevotion(
                    icon: Icons.key,
                    title: 'PRAYER POINT',
                    hasLink: false,
                    subTitle: 'Father, let there be an insatiable hunger for you in my heart',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  MoreDevotion(
                    icon: Icons.book,
                    title: 'BIBLE IN ONE YEAR',
                    subTitle: '1 Samuel 4 - 7 ',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  MoreDevotion(
                    icon: Icons.music_note_outlined,
                    title: 'HYMN',
                    subTitle: 'Hymn 8',
                  )
                ],
              )
            : const SizedBox(width: 0.0),
          ],
        ),
      ),
    );
  }
}
