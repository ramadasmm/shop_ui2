import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  String title;
  IconData icon;
  AppBarWidget({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
            ),
          ),
        ],
      ),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
