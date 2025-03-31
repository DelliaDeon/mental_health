import 'package:dribble_ui/screens/journal_page.dart';
import 'package:flutter/material.dart';

class NoteContainer extends StatefulWidget {
  Function()? onTap;
  final String title;
  final String content;
  final String dateTime;
  final Color color;

  NoteContainer({
    super.key,
    required this.onTap,
    required this.title,
    required this.content,
    required this.dateTime,
    required this.color,
  });

  @override
  State<NoteContainer> createState() => _NoteContainerState();
}

class _NoteContainerState extends State<NoteContainer> {
  // change dateTime to optimal format
  String formatDateTime(String dateTime){
    final DateTime dt = DateTime.parse(dateTime);
    final now = DateTime.now();

    if(dt.year == now.year && dt.month == now.month && dt.day == now.day){
      return "Today ${dt.hour.toString().padLeft(2, '0')}:"
          "${dt.minute.toString().padLeft(0, '0')}";
    }
    return "${dt.day}/${dt.month}/${dt.year}, "
        "${dt.hour.toString().padLeft(2, '0')}:"
        "${dt.minute.toString().padLeft(0, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
              offset: Offset(1, 2),
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                // content
                Text(
                  widget.content,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),

            Text(
              formatDateTime(widget.dateTime),
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ),
    );
  }
}
