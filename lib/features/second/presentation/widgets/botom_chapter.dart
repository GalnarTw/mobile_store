import 'package:flutter/material.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';


Widget text(String text) {
  return FittedBox(
    child: Text(
      text,
      style: const TextStyle(fontSize: 20,
        fontFamily: 'Mark Pro',
        fontWeight: FontWeight.w700,
        
      ),
    ),
  );
}

class Chapter extends StatefulWidget {
  const Chapter({super.key});

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: 40,
        child: TabBar(
          indicatorPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 7,
          ),
          indicatorColor: colorOrange,
          indicatorWeight: 3,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: [
            text('Shop'),
            text('Details'),
            text('Features'),
          ],
        ),
      ),
    );
  }
}

