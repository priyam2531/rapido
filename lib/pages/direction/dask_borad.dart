import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/pages/direction/direction_page.dart';

class DaskBorad extends StatefulWidget {
  const DaskBorad({Key? key}) : super(key: key);

  @override
  State<DaskBorad> createState() => _DaskBoradState();
}

class _DaskBoradState extends State<DaskBorad> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const DirectionPage(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: AppColor.yellow,
              showLabel: false,
              notchColor: Color(0xff050505),
              removeMargins: true,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.watch_later_outlined,
                    color: Color(0xffD5DDE0),
                  ),
                  activeItem: Icon(
                    Icons.watch_later_outlined,
                    color: Color(0xffb3e5fc),
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Color(0xffD5DDE0),
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: Color(0xffb3e5fc),
                  ),
                  itemLabel: 'Page 2',
                ),
                ///svg example
                BottomBarItem(
                  inActiveItem: Icon(Icons.search),
                  activeItem: Icon(
                    Icons.search,
                    color: Color(0xff050505),
                  ),
                  itemLabel: 'Page 3',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff4a9a05), child: const Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffda0831), child: const Center(child: Text('Page 3')));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffb3e5fc), child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff4a9a05),
        child: const Center(child: Text('Page 5')));
  }
}
