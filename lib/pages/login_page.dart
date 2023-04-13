import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiuts/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 444,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        IconData(0xee84,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true),
                        color: Color(0xffFFFFFF),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Your Future",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Furniture",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 28,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 5,
                        width: 78,
                        decoration:
                            const BoxDecoration(color: Colors.deepOrangeAccent),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(40),
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(17),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text("Login First",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 28,
                                  )),
                              const SizedBox(
                                height: 50,
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(IconData(0xe491,
                                        fontFamily: 'MaterialIcons')),
                                    labelText: 'Username'),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(IconData(0xe3ae,
                                        fontFamily: 'MaterialIcons')),
                                    suffixIcon: Icon(IconData(0xe6bd,
                                        fontFamily: 'MaterialIcons')),
                                    labelText: 'Password'),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenuPage()));
                    },
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 80, left: 20, right: 20),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
