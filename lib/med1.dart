import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tutumapp/SvgIcons.dart';

class med extends StatefulWidget {
  const med({Key? key}) : super(key: key);

  @override
  State<med> createState() => _medState();
}

class _medState extends State<med> {
  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = const Color(0xFFEDEDED);
    var primaryColor3 = const Color(0xFFFFDBDB);
    var primaryColor4 = const Color(0xFFEDE8E8);
    int selected = -1;

    return Scaffold(
        backgroundColor: const Color(0xFFFFDBDB),
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          backgroundColor: primaryColor.withOpacity(0.0),
          title: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, top: 25.0, right: 40),
                  child: Center(
                    child: Image.asset(
                      'images/man.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 25.0, right: 30),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Medicine',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: 560,
          width: 420,
          decoration: const BoxDecoration(
            color: Color(0xFFEDE8E8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 30),
                        child: Image.asset(
                          'images/check.png',
                          width: 15.0,
                          height: 15.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          bottom: 30,
                        ),
                        child: RichText(
                          text: const TextSpan(
                            text: 'You are monitoring of ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Dr.Ahmed',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Shape and color',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 50.0,
                    child: ScrollSnapList(
                      onItemFocus: (index) {
                        print("Center is $index");
                        setState(() {
                          selected = index;
                        });
                      },
                      itemSize: 35,
                      itemBuilder: (context,index) => pillIcon(primaryColor,'bb'),
                      itemCount: 30,

                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 50.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30.0,
                            child: Image.asset(
                              'images/pill.png',
                              width: 1.0,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
              child: const Icon(Icons.add),
              backgroundColor: const Color.fromARGB(255, 228, 42, 76),
              onPressed: () {}),
        ),

    );
  }
}
