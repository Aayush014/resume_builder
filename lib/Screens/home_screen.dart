import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00b65f),
        title: const Text(
          'Resume Builder',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('cv');
                });
              },
              icon: const Icon(
                CupertinoIcons.arrow_down_doc,
                color: Colors.white,
                size: 35,
              )),
          IconButton(
            onPressed: () {
              setState(() {
                (click) ? click = false : click = true;
              });
            },
            icon: (click)
                ? const Icon(
                    Icons.format_list_bulleted,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.apps,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('per_info');
                });
              },
              child: rectangleBox(
                  const Icon(
                    CupertinoIcons.person,
                    size: 45,
                  ),
                  "Personal Information",
                  "Enter your personal information"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('academic');
                      });
                    },
                    child: squareBox(
                        const Icon(
                          CupertinoIcons.person_3,
                          size: 50,
                        ),
                        'Academic')),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('work');
                      });
                    },
                    child: squareBox(
                        const Icon(
                          CupertinoIcons.building_2_fill,
                          size: 50,
                        ),
                        'Experience')),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('ref');
                      });
                    },
                    child: squareBox(
                        const Icon(
                          CupertinoIcons.person_2,
                          size: 50,
                        ),
                        'Reference')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('');
                    });
                  },
                  child: squareBox(
                      const Icon(
                        CupertinoIcons.wrench_fill,
                        size: 50,
                      ),
                      'Skills'),
                ),
                squareBox(
                    const Icon(
                      Icons.language_rounded,
                      size: 50,
                    ),
                    'Language'),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('hobby');
                    });
                  },
                  child: squareBox(
                      const Icon(
                        Icons.videogame_asset,
                        size: 50,
                      ),
                      'Hobbies'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                squareBox(
                    const Icon(
                      CupertinoIcons.guitars,
                      size: 50,
                    ),
                    'Interest'),
                squareBox(
                    const Icon(
                      CupertinoIcons.list_number,
                      size: 50,
                    ),
                    'Projects'),
                squareBox(
                    const Icon(
                      Icons.emoji_events_outlined,
                      size: 50,
                    ),
                    'Achievements'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget rectangleBox(Icon i1, String t1, String s1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400, spreadRadius: 0.2, blurRadius: 7)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
                alignment: Alignment.center,
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 4,
                      )
                    ]),
                child: i1),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    t1,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    s1,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget squareBox(Icon i2, String t2) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 7),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          i2,
          Text(
            t2,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          )
        ],
      ),
    ),
  );
}

bool click = true;
