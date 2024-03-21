import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:unizone/shared/constants/app_color.dart';

class PostWithPhotoAndHashtag extends StatelessWidget {
  const PostWithPhotoAndHashtag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/cardimage.jpeg',
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Dr. Youssef Abdallah',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                height: 1.4,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: kPrimaryColor,
                            size: 16,
                          ),
                          Spacer(),
                          Text(
                            '3d',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              color: Color(0xFF95989A),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            size: 18,
                            color: Color(0xFF5E5E5E),
                          ),
                        ],
                      ),
                      Text(
                        'Engineering, Beni Suef',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          color: Color(0xFF95989A),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 10,
                top: 5,
              ),
            ),
            ReadMoreText(
              trimLines: 3,
              textAlign: TextAlign.justify,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'See more',
              trimExpandedText: 'See less',
              lessStyle: TextStyle(
                color: Colors.grey[500],
              ),
              moreStyle: TextStyle(
                color: Colors.grey[500],
              ),
              'الاهداف مش بتتعمل بعد يوم ولا شهر لازم تفهم ان الاهداف اللى بتغير حياتك بتحتاج سنين ولما تيجى تكتب الهدف متضايقش ان المدة طويلة اعتبر انك بتبنى عمارة كبيرة وكل بوم بتحط طوبة ولو فكرت بمبدأ انك عاوز تخلص العمارة فى يوم واحد او انها محتاجة طوب كتير عشان تتبنى يبقى عمرك ماهتبنيها ',
              style: const TextStyle(fontSize: 14, fontFamily: 'Roboto'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 6,
                      ),
                      child: SizedBox(
                        height: 25,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 1,
                          padding: EdgeInsets.zero,
                          child: const Text(
                            '#software',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 6,
                      ),
                      child: SizedBox(
                        height: 25,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 1,
                          padding: EdgeInsets.zero,
                          child: const Text(
                            '#flutter',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 374,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/postImage.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/like1.png'),
                    radius: 12,
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/like2.jpeg'),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-20, 0),
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/like3.png'),
                    ),
                  ),
                  const Text(
                    '620',
                    style: TextStyle(
                      color: Color(0xFF95989A),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    '75 Comments . 7 Rezones',
                    style: TextStyle(
                        color: Color(0xFF95989A),
                        fontFamily: 'Roboto',
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Color(0xFF00A0DC),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Like',
                            style: TextStyle(
                                color: Color(0xFF00A0DC),
                                fontFamily: 'Roboto',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.mode_comment_outlined,
                            color: Color(0xFF636363),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Comment',
                            style: TextStyle(
                                color: Color(0xFF636363),
                                fontFamily: 'Roboto',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.repeat,
                            color: Color(0xFF636363),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Rezone',
                            style: TextStyle(
                                color: Color(0xFF636363),
                                fontFamily: 'Roboto',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
