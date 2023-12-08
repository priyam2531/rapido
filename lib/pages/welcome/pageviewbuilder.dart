import 'package:flutter/material.dart';
import 'package:rapido/pages/welcome/welcome_page_four.dart';
import 'package:rapido/pages/welcome/welcome_page_one.dart';
import 'package:rapido/pages/welcome/welcome_page_three.dart';
import 'package:rapido/pages/welcome/welcome_page_two.dart';

import '../../constant/app_color.dart';

class PageViewExample extends StatefulWidget {
  PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  int activePage = 0;

  List<Widget> screen = [
    WelcomePageOne(),
    WelcomePageTwo(),
    WelcomePageThree(),
    WelcomePageFour()
  ];
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppColor.yellow,
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemCount: screen.length,
            itemBuilder: (context, index) {
              return screen[index];
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  screen.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            controller.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(color: activePage == index
                                ? Colors.amber
                                : Colors.amber,
                            border: Border.all(color: activePage == index
                                ? Colors.black
                                : Colors.transparent,width: 2),
                            shape: BoxShape.circle
                            ),

                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }

}
