import 'package:flutter/material.dart';

Widget menu4(context) {
  return Column(
    children: [
      Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.5, bottom: 0.5),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f7),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/i_am_data");
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/datamain.png", width: 110),
                                const SizedBox(height: 15),
                                const Text("ข้อมูลของฉัน",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.5, bottom: 0.5),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f7),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/datamain2.png", width: 110),
                                const SizedBox(height: 15),
                                const Text("ส่งรายงานกายภาพ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          )),
      Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.5, bottom: 0.5),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f7),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/datamain3.png", width: 110),
                                const SizedBox(height: 15),
                                const Text("ดูสถิติของฉัน",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.5, bottom: 0.5),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f7),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/chat_doctor");
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/datamain4.png", width: 110),
                                const SizedBox(height: 15),
                                const Text("คุยกับหมอ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ))
    ],
  );
}
