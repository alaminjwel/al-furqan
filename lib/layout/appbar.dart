import 'package:flutter/material.dart';

class AppBarBuilder extends StatelessWidget implements PreferredSizeWidget {
  @override
  const AppBarBuilder({Key? key, required this.title}) : super(key: key);
  final String title;
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(20,10,10,10),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'logo.png',
              fit: BoxFit.cover,
              height: 26.0,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {

              },
              child: const Icon(
                Icons.search,
                size: 26.0,
              ),
            )
        ),
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {

              },
              child: const Icon(
                  Icons.settings
              ),
            )
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}