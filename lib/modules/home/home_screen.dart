import 'package:flutter/material.dart';

import 'package:maksat_flutter_application/core/theme/app_textstyles.dart';
import 'package:maksat_flutter_application/core/users.dart';
import 'package:maksat_flutter_application/modules/home/widget/all_photos.dart';
import 'package:maksat_flutter_application/modules/home/widget/home_scrols.dart';
import 'package:maksat_flutter_application/modules/home/widget/users_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _usersRepository = UsersRepository();
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    String image1 =
        'https://tripmydream.cc/travelhub/travel/block_gallery/11/0954/gallery_first_110954.jpg';
    String image2 =
        'https://st4.depositphotos.com/29395340/31622/i/450/depositphotos_316226858-stock-photo-beautiful-colorful-sunset-sky-dam.jpg';
    String image3 =
        'https://34travel.me/media/upload/images/2020/MAY/arch2020/1.jpg';
    String image4 =
        'https://kartinki.pics/uploads/posts/2021-03/thumbs/1616126395_10-p-gruziya-krasivie-foto-11.jpg';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder<List<User>>(
        future: _usersRepository.fetchUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                const Text(
                  'Discover',
                  style: AppTextstyles.s36w400,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'WHAT’S NEW TODAY',
                  style: AppTextstyles.s14w500,
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HomeScrols(
                          avatar: 'assets/images/first_photo_scrols.png',
                          imageScrolls: image1),
                      const SizedBox(
                        width: 20,
                      ),
                      HomeScrols(
                          avatar: 'assets/images/second_photo_scrols.png',
                          imageScrolls: image2),
                      const SizedBox(
                        width: 20,
                      ),
                      HomeScrols(
                          avatar: 'assets/images/third_photo_scrols.png',
                          imageScrolls: image3),
                      const SizedBox(
                        width: 20,
                      ),
                      HomeScrols(
                          avatar: 'assets/images/four_photo_scrols.png',
                          imageScrolls: image4),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'BROWSE ALL',
                  style: AppTextstyles.s14w500,
                ),
                const SizedBox(
                  height: 20,
                ),
                AllPhotos(users: snapshot.data ?? [])
              ],
            );
          }
        },
      ),
    );
  }
}
