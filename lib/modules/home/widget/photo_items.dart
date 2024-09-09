import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/modules/story/story_screen.dart';

class PhotoItems extends StatelessWidget {
  const PhotoItems({super.key, required this.isLeftSmall, required this.isLeft, required this.image, required this.isRightSmall, required this.name, required this.surname, required this.nick});
  final bool isLeftSmall;
  final bool isRightSmall;
  final bool isLeft;
  final String image;
  final String name;
  final String surname;
  final String nick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => StoryScreen(image: image, name: name, surname: surname, nick: nick,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: isLeft
              ? (isLeftSmall)
                  ? 200
                  : 300
              : (isRightSmall)
                  ? 200
                  : 300,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          )),
        ),
      ),
    );
  }
}