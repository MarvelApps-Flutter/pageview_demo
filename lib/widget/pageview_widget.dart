import 'dart:math';

import 'package:flutter/material.dart';

import 'package:pageview_module/screen/explore.dart';
import 'package:pageview_module/screen/home.dart';
import 'package:pageview_module/screen/profile.dart';
import 'package:pageview_module/screen/ticket_screen.dart';

class PageViewWidget extends StatefulWidget {
  final int index;
  final Function callback;
  const PageViewWidget({
    Key? key,
    required this.index,
    required this.callback,
  }) : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<Widget> pagesList = [
    const Home1(),
    const Explore(),
    const Ticket(),
    const Profile(),
  ];

  PageController? pageController;

  double viewportFraction = 1;

  double? pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
        initialPage: widget.index, viewportFraction: viewportFraction)
      ..addListener(() {
        setState(() {
          pageOffset = pageController!.page;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (index) {
        widget.callback(index);
      },
      controller: pageController,
      itemBuilder: (context, index) {
        double scale = max(viewportFraction,
            (1 - (pageOffset! - index).abs()) + viewportFraction);
        log(scale);
        double angle = (pageOffset! - index).abs();

        if (angle > 0.5) {
          angle = 1 - angle;
        }
        return Transform(
            transform: Matrix4.identity()
              ..setEntry(
                3,
                2,
                0.001,
              )
              ..rotateY(angle),
            alignment: Alignment.center,
            child: pagesList[index]);
      },
      itemCount: pagesList.length,
    );
  }
}
