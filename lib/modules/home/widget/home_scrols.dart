import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class HomeScrols extends StatelessWidget {
  const HomeScrols(
      {super.key, required this.imageScrolls, required this.avatar});
  final imageScrolls;
  final avatar;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: mq.height * 0.5,
          width: mq.width * 0.92,
          child: CachedNetworkImage(
            imageUrl: imageScrolls,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
