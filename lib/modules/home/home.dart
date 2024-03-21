import 'package:flutter/material.dart';
import 'package:unizone/modules/home/custom_courses_listView.dart';
import 'package:unizone/modules/home/custom_post.dart';
import 'package:unizone/modules/home/custom_post_with_photo.dart';
import 'package:unizone/modules/home/custom_video_post.dart';
import 'package:unizone/shared/constants/app_color.dart';
import 'package:unizone/shared/constants/icon_broken.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              IconBroken.Search,
              color: Colors.black,
            ),
          )
        ],
        leading: const Icon(
          IconBroken.Notification,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'UniZone',
          style: TextStyle(fontFamily: 'NicoMoji', color: kPrimaryColor),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'assets/images/imagePost4.jpeg',
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 215,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: const Color(0xFF95989A),
                              width: 1,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'What do you want to talk about?',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Color(0xFF95989A),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              child: Text(
                                'Select zone',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PostWithPhotoAndHashtag(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'Courses for you',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CoursesListView(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomPost(),
                  SizedBox(
                    height: 20,
                  ),
                  VideoPost()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
