import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maksat_flutter_application/core/users.dart';
import 'package:maksat_flutter_application/modules/home/widget/photo_items.dart';
import 'package:maksat_flutter_application/modules/story/story_screen.dart';

class AllPhotos extends StatelessWidget {
  const AllPhotos({super.key, required this.users});
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
              children: _generateItems(
                  users: users.getRange(0, 5).toList(), isLeft: true)),
        ),
        Expanded(
          child: Column(
            children: _generateItems(
                users: users.getRange(5, 10).toList(), isLeft: false),
          ),
        ),
      ],
    );
  }
}

List<Widget> _generateItems({
  required List<User> users,
  required bool isLeft,
}) {
  List<Widget> itemsToReturn = [];
  for (var i = 0; i < 5; i++) {
    itemsToReturn.add(PhotoItems(
      isLeftSmall: i == 0 || i == 2,
      isRightSmall: i == 2 || i == 4,
      isLeft: isLeft,
      image: users[i].photos.first,
      name: users[i].name,
      surname: users[i].surname,
      nick: users[i].nick,
    ));
  }
  return itemsToReturn;
}
