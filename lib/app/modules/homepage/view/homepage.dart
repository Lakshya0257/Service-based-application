import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ricoz/utils/colors.dart';
import 'package:ricoz/utils/dimensions.dart';
import 'package:ricoz/widgets/big_text.dart';
import 'package:ricoz/widgets/button.dart';
import 'package:get/get.dart';

import '../controller/homepage_controller.dart';

class Homepage extends GetView<HomepageController> {
  static const route = '/';
  static launch() => Get.toNamed(route);
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home_filled,
          Icons.search,
          Icons.explore_off_rounded,
          Icons.person_2_rounded
        ],
        activeIndex: 0,
        rightCornerRadius: 20,
        leftCornerRadius: 20,
        height: Dimensions.height40 * 1.6,
        gapLocation: GapLocation.none,
        // notchSmoothness: NotchSmoothness.softEdge,
        onTap: (i) {},
        //other params
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Dimensions.screenWidth,
              height: Dimensions.height40 * 12,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/premium-vector/friends-get-together-have-fun-drinking-beer-flat-design-style-vector-illustration_540284-580.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height40 * 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Dimensions.width40 * 7,
                          height: Dimensions.height40 * 1.2,
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.width20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: const TextField(
                            decoration: InputDecoration(
                                labelText: "Search here",
                                border: InputBorder.none),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.notifications_active_outlined,
                            ),
                            SizedBox(
                              width: Dimensions.width20,
                            ),
                            const Icon(
                              Icons.message_outlined,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    BigText(
                      text: "Invite your",
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                      size: Dimensions.font20 * 1.4,
                      color: const Color.fromARGB(255, 53, 53, 53),
                    ),
                    BigText(
                      text: "Friends",
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                      size: Dimensions.font20 * 3,
                      color: const Color.fromARGB(255, 53, 53, 53),
                    ),
                    BigText(
                      text: "now!",
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                      size: Dimensions.font20 * 1.4,
                      color: const Color.fromARGB(255, 53, 53, 53),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    BigText(
                      text: "Get exciting offers and deals as\nrewards",
                      maxLines: 2,
                      color: const Color.fromARGB(255, 45, 45, 45),
                      size: Dimensions.font20 * .6,
                    ),
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    Button(
                      on_pressed: () {},
                      text: "Invite",
                      color: AppColors.black,
                      textColor: AppColors.white,
                      width: Dimensions.width40 * 4,
                      height: Dimensions.height40,
                      radius: 10,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.analytics_outlined),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: "Social\nMedia",
                        maxLines: 2,
                        color: AppColors.grey,
                        size: Dimensions.font15 * .7,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.emoji_events_outlined),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: "Google\nRewards",
                        maxLines: 2,
                        color: AppColors.grey,
                        size: Dimensions.font15 * .7,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.insights_outlined),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: "Graphics\nDesign",
                        maxLines: 2,
                        color: AppColors.grey,
                        size: Dimensions.font15 * .7,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.lightbulb_outlined),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: "Ads",
                        color: AppColors.grey,
                        size: Dimensions.font15 * .7,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.laptop_outlined),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: "Website\ndevlopment",
                        maxLines: 2,
                        color: AppColors.grey,
                        size: Dimensions.font15 * .7,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                children: [
                  BigText(
                    text: "Achievements",
                    fontWeight: FontWeight.bold,
                    size: Dimensions.font20 * 1.5,
                  ),
                  SizedBox(
                    width: Dimensions.width15,
                  ),
                  const Icon(
                    Icons.emoji_events_outlined,
                    color: Color.fromARGB(255, 0, 110, 255),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: Dimensions.width40 * 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width40 * 5,
                            height: Dimensions.height40 * 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.edesk.com/wp-content/uploads/2023/02/10-ways-to-make-angry-customers-happy-blog.webp'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          BigText(
                            text:
                                "1.2 lacs+ people have their\nsocial management through Ricoz",
                            maxLines: null,
                            size: 11,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    SizedBox(
                      width: Dimensions.width40 * 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width40 * 5,
                            height: Dimensions.height40 * 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.eggdigital.com/wp-content/uploads/5112782-scaled.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          BigText(
                            text:
                                "1.2 lacs+ people have their\nsocial management through Ricoz",
                            maxLines: null,
                            size: 11,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    SizedBox(
                      width: Dimensions.width40 * 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width40 * 5,
                            height: Dimensions.height40 * 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.searchenginejournal.com/wp-content/uploads/2019/02/The-Top-10-Skills-Every-Successful-Social-Media-Manager-Should-Have.png'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          BigText(
                            text:
                                "1.2 lacs+ people have their\nsocial management through Ricoz",
                            maxLines: null,
                            size: 11,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                children: [
                  BigText(
                    text: "Courses 👉",
                    fontWeight: FontWeight.bold,
                    size: Dimensions.font20 * 1.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Dimensions.width40 * 1.1,
                    height: Dimensions.width40 * 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://sklc-tinymce-2021.s3.amazonaws.com/comp/2023/02/179_1675948994.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: Dimensions.width40 * 1.1,
                    height: Dimensions.width40 * 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://www.businessofapps.com/wp-content/uploads/2020/08/zymr8_steps_the_mobile_app_dev_lifecycle_cover.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: Dimensions.width40 * 1.1,
                    height: Dimensions.width40 * 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.theengineeringprojects.com/image/main/2020/07/The-future-of-cloud-computing.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: Dimensions.width40 * 1.1,
                    height: Dimensions.width40 * 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Blender_logo_no_text.svg/2503px-Blender_logo_no_text.svg.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: Dimensions.width40 * 1.1,
                    height: Dimensions.width40 * 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://logowik.com/content/uploads/images/flutter5786.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            Container(
              width: double.maxFinite,
              height: Dimensions.height40 * 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://i0.wp.com/exergic.in/wp-content/uploads/2022/11/Asset-13-1.png?fit=3761%2C1086&ssl=1"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      height: Dimensions.height40 * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://entri.app/blog/wp-content/uploads/2021/10/Web-Development-Square.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      height: Dimensions.height40 * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://img-b.udemycdn.com/course/480x270/4060612_7bfe_3.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            Container(
              width: double.maxFinite,
              height: Dimensions.height40 * 5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://scontent-bom1-1.xx.fbcdn.net/v/t39.30808-6/245947256_281149094012944_3467175623005317130_n.jpg?stp=dst-jpg_p180x540&_nc_cat=101&ccb=1-7&_nc_sid=19026a&_nc_ohc=yG5SV0y1Z8QAX_EOgO-&_nc_ht=scontent-bom1-1.xx&oh=00_AfCphlAU9daSFQJh5kur7zz3OIXeoeqKO5khoPT7ur7LEg&oe=64B0E00A"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: double.maxFinite,
              height: Dimensions.height40 * 6,
              color: AppColors.lightGrey,
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "XYZ Street, Banglore, India",
                      size: 15,
                    ),
                    BigText(
                      text: "9556xxxxxx",
                      size: 15,
                    ),
                    BigText(
                      text: "XYZ Street, Banglore, India",
                      size: 15,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.android),
                      label: const Text('Download for Android'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      label: const Text('Download for iOS'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
