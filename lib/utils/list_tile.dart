import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final color;

  const MyListTile({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(13)
        ),
        child: ListTile(
          // icon
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(13),
            child: Icon(
              icon,
              color: color,
            ),
          ),

          title: Text(
            title,
            style: TextStyle(
              color: Colors.pink[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w500,
            ),
          ),

          trailing: Icon(
            Icons.more_horiz,
            color: Colors.pink[400],
          ),
        ),
      ),
    );
  }
}
