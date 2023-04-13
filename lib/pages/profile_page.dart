import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiuts/pages/main_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget collection() {
      Widget collectionCard(String text, String img) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 10, right: 10, bottom: 10),
              height: 140,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(1, 2))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(img))),
                  ),
                  const Spacer(),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        );
      }

      return Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 15, left: 10, right: 10, bottom: 10),
                    height: 140,
                    width: 170,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFC6C6),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(1, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/chair_light_orange_bg.png"))),
                        ),
                        const Spacer(),
                        Text(
                          "Best Chairs",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              collectionCard("Best Lamps", "assets/lamp_light_gray_bg.png")
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              collectionCard("Best Chairs", "assets/chair_light_gray_bg.png"),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 15, left: 10, right: 10, bottom: 10),
                    height: 140,
                    width: 170,
                    decoration: BoxDecoration(
                        color: const Color(0xffA4BDFF),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(1, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/plant_light_blue_bg.png"))),
                        ),
                        const Spacer(),
                        Text(
                          "Plant Choice",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(1, 2))
        ]),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuPage()));
                },
                child: const Icon(Icons.home),
              ),
              const Spacer(),
              Column(
                children: const [
                  Icon(Icons.person),
                  Text(
                    '_____',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.blueAccent),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: const Icon(
          Icons.favorite_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 40, bottom: 20),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img-avatar.png"))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Naufal Tsany Qadamushidqi",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Mobile Application Developer",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 58,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 238, 238)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "24 Collection",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "__________",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.blueAccent),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Column(
                    children: [
                      Text(
                        "12 History",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "__________",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 241, 238, 238)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            collection()
          ],
        ),
      ),
    );
  }
}
