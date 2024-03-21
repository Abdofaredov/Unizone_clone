import 'package:flutter/material.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 311,
      width: 414,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 238,
                  height: 138,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/514b/8175/217a4d6e64aa5dca5317b1525bdf2d44?Expires=1711929600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WkSPlfu55ucTGRke7HfB2-XmnlbQiBuzYAeMGMxotgGtzRewmqQUhX1C4upMaqoVIFZVvK-oiX-4kZbCtBEsl0FGtpq10ujhPZwmkPel~nr7iwNc4xQ6uCwG-4sGqhhsUlF5Je7XcWiLIxkeAz9gWd4wfPp5l4J-AHt3vyYRvOENVP3rRC0iHVmLcD7yKH8Y7pZVWxtPqknjbnf1mmDaHWjKrf14B-pEJU3HUnyI90A2VF4YoCm-H1oyK4UNnzynez3YwI5woKu1rikl4X0Mux4SWBvU72GPtiDU2Q3auJ9mHOC4rzeQQBf0WDcJQ2BQGArvUgxeyam6a7fD2M0Jng__',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Network Management',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'FCAI, Beni Suef University',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0xFF95989A),
                        ),
                      ),
                      const Text(
                        'Dr. Ahmed Abdallah',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0xFF95989A),
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            '(105 ratings)',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '315 enrolled',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '3.2',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0xFF95989A),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 40,
                        minWidth: 218,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: const Color(0xFFE6F6FC),
                        child: const Text(
                          'More',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Color(0xFF00A0DC),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
