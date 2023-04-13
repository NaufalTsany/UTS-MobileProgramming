import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiuts/pages/profile_page.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget category() {
      Widget categoryCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 15, left: 10, right: 10, bottom: 10),
                height: 110,
                width: 130,
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text,
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        const Icon(IconData(0xe09b,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            categoryCard("assets/plant_white_bg.png", "Plant"),
            categoryCard("assets/lamp_white_bg.png", "Lamp"),
            categoryCard("assets/chair_white_bg.png", "Chair"),
          ],
        ),
      );
    }

    Widget hotItem() {
      Widget hotItemCard(String img, String text, String price) {
        return Container(
          margin: const EdgeInsets.only(left: 20),
          height: 187,
          width: 167,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(left: 5, top: 5),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                    Text(price,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                hotItemCard("assets/favorite_img_4.jpg", "Cactus", "\$18"),
                hotItemCard(
                    "assets/favorite_img_2.jpg", "Traditional Chair", "\$24"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                hotItemCard(
                    "assets/favorite_img_3.jpeg", "Wooden Chair", "\$44"),
                hotItemCard(
                    "assets/favorite_img_1.jpg", "Elegant Lamp", "\$13"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                hotItemCard(
                    "assets/favorite_img_5.jpg", "Beach Beautiful", "\$36"),
                hotItemCard(
                    "assets/favorite_img_6.jpg", "Architectural", "\$30"),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 130),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(0xe3dc, fontFamily: 'MaterialIcons'),
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text("Discover",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffFFFFFF),
                            fontSize: 23,
                          )),
                      const Spacer(),
                      const Icon(
                        IconData(0xe59c, fontFamily: 'MaterialIcons'),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              IconData(0xe567, fontFamily: 'MaterialIcons'),
                            ),
                            border: InputBorder.none,
                            hintText: 'What are you looking for?'),
                      ))
                ],
              ),
            ),
          )),
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
              Column(
                children: const [
                  Icon(Icons.home),
                  Spacer(),
                  Text(
                    '_____',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.blueAccent),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: const Icon(Icons.person),
              )
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Category',
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            category(),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Hot Item',
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            hotItem()
          ],
        ),
      ),
    );
  }
}
