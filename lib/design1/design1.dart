import 'package:flutter/material.dart';
import 'package:quiz/design1/details/AppAssets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Design1 extends StatefulWidget {
  static const String routeName = "design1";
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {


  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            margin:
                                const EdgeInsets.only(top: 32, left: 32, bottom: 24),
                            child: Image.asset(AppAssets.logo)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32, left: 8, bottom: 24),
                      child: const Text(
                        "Moody",
                        style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.only(top: 32, right: 32, bottom: 24),
                    child: Image.asset(AppAssets.icon)),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 32, bottom: 12),
                    child: const Text("Hello, ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300))),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: const Text(
                    "Youstina",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 16, left: 32),
                    child: const Text(
                      "How are you feeling today ?",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.only(left: 32,right: 32),
                child: Row(
                  children: [
                    Image.asset(AppAssets.love),
                    const SizedBox(
                      width: 34,
                    ),
                    Image.asset(AppAssets.cool),
                    const SizedBox(
                      width: 34,
                    ),
                    Image.asset(AppAssets.happy),
                    const SizedBox(
                      width: 34,
                    ),
                    Image.asset(AppAssets.sad),
                    const SizedBox(
                      width: 34,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 32),
                    child: const Text(
                      "Feature",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 32),
                    child: const Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff027947),
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff027947),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.23,
              margin: const EdgeInsets.only(left: 32, right: 32, top: 16),
              decoration: BoxDecoration(
                  color: const Color(0xffeafbf1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Positive vibes",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff343f53)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          const Row(
                            children: [
                              Text(
                                "Boost your mood with",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text("Positive vibes",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          const SizedBox(height: 16,),
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.Button,
                              ),
                              const SizedBox(width: 5,),
                              const Text(
                                "10 mins",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex:3,
                      child: Image.asset(
                        AppAssets.dog,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 9,),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff97a1b2),
                dotColor: Color(0xffd7d7d7),
                dotHeight: 7,
                dotWidth: 7,
                type: WormType.thinUnderground,
              ),
            ),
            Container(height: 30,),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 32),
                    child: const Text(
                      "Exercise",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 32),
                    child: const Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff027947),
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff027947),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 32, right: 32),
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    AppAssets.relax,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(width: 24,),
                  Expanded(
                      child:
                          Image.asset(AppAssets.medatation, fit: BoxFit.cover)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 32, right: 32),
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    AppAssets.beathing,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(child: Image.asset(AppAssets.yoga, fit: BoxFit.cover)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage(AppAssets.home),size: 30,),
                  ImageIcon(AssetImage(AppAssets.dot))
                ],
              ), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.grid),size: 30,), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.calender),size: 30,), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.user),size: 30,), label: ""),
        ],

      ),
    );
  }
}
