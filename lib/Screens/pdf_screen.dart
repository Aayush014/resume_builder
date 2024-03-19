import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00b65f),
        title: const Text(
          'PDF Preview',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
              ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      height: 200,
                      width: 180,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            height: 150,
                            width: 45,
                            color: Colors.teal,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 60,
                                width: 60,
                              ),
                              Container(
                                height: 125,
                                width: 125,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.teal, width: 8),
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: const SizedBox(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('Assets/Img/Aayush.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Aayush",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Patel",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Manager",
                          style: TextStyle(fontSize: 22, color: Colors.teal),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 230,
                    width: 175,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Contact",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "+91 9879004689",
                            ),
                          ),
                          const Text(
                            "aayush@gmail.com",
                            style: TextStyle(fontSize: 15),
                          ),
                          const Text(
                            "www.akp.com",
                            style: TextStyle(fontSize: 15),
                          ),
                          const Text(""),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Find me online",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Linkedin.com/aayush014",
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                          const Text(
                            "Instagram.com/Aayush014",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 230,
                    width: 175,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Profile",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "To secure a challenging position in a reputable organization to expand my learnings, knowledge, and skills.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Work Summery",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "2012-2024",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text(
                            "Employee",
                            style: TextStyle(fontSize: 11),
                          ),
                          const Text(
                            "as a Flutter Developer",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
                width: 350,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
