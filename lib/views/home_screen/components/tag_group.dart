import 'package:app/views/home_screen/components/tag.dart';
import 'package:flutter/cupertino.dart';

class TagGroup extends StatefulWidget {
  TagGroup({Key key}) : super(key: key);

  @override
  _TagGroupState createState() => _TagGroupState();
}

class _TagGroupState extends State<TagGroup> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            Tag(txt: 'Popular'),
            Tag(txt: 'Prawn'),
            Tag(txt: 'Fish'),
            Tag(txt: 'Spicy'),
            Tag(txt: 'Special'),
            Tag(txt: 'Cuttle Fish'),
            Tag(txt: 'Crab'),
            Tag(txt: 'Octupus'),
            Tag(txt: 'Popular'),
          ],
        ),
      ),
    );
  }
}
