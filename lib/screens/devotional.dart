import 'package:familyaltar/widgets/today_devotion.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(printer: PrettyPrinter());

class Devotional extends StatefulWidget {
  const Devotional({super.key});

  @override
  State<Devotional> createState() => _DevotionalState();
}

class _DevotionalState extends State<Devotional> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      logger.d(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _selectDate(context),
        backgroundColor: Colors.white,
        foregroundColor: Colors.indigo,
        elevation: 0,
        child: const Icon(
          Icons.date_range,
          size: 30.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0),
            child: Column(
              children: [
                TodayDevotion(
                  date: DateTime.now(),
                  cut: false,
                  title: 'Now',
                  extend: true,
                  message:
                      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro autem, dicta non veniam, exercitationem enim sunt, cumque eveniet nisi hic odit sit! Voluptatum aut dicta ipsum debitis totam a deleniti!',
                )
              ],
            ),
          )),
    );
  }
}
