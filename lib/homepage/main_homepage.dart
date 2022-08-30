import 'package:flutter/material.dart';
import 'package:project/homepage/widget_4menu.dart';
import 'package:project/homepage/widget_drawber.dart';

class HomePageAPP extends StatefulWidget {
  const HomePageAPP({Key? key}) : super(key: key);

  @override
  State<HomePageAPP> createState() => _HomePageAPPState();
}

class _HomePageAPPState extends State<HomePageAPP> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const NavDrawer(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: const Color.fromARGB(255, 2, 126, 143),
          ),
          Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.cyan,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _key.currentState!.openDrawer();
                          },
                          child: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            const Text("นิติพล พงษ์คำ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(90)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, top: 1, bottom: 1),
                                child: Text("ผู้ป่วย",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(child: menu4(context))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 80),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 4,
                        color: const Color(0xFF000000).withOpacity(.2),
                        offset: const Offset(-1, 2))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "images/logo.png",
                    width: 70,
                    filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ติดตามคนไข้หลัง ",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Prompt-Medium",
                            color: Colors.black),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color.fromARGB(
                              255, 1, 72, 82), // Text colour here
                          width: 2.0, // Underline width
                        ))),
                        child: const Text(
                          "ผ่าตัดเข่า",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Prompt-ExtraBold",
                              color: Color.fromARGB(255, 1, 72, 82)),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
