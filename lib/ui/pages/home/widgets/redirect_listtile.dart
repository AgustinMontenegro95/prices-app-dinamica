import 'package:flutter/material.dart';

class RedirectListtile extends StatelessWidget {
  final String title;
  final String route;

  const RedirectListtile({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.grey.shade300,
        title: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.grey[850]),
        ),
        iconColor: Colors.grey[850],
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        trailing: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
