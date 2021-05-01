import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  Tag({
    @required this.txt,
  });

  final String txt;

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: Text(
            widget.txt,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              // backgroundColor: Colors.black,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.black,
        ),
      ),
    );
  }
}
