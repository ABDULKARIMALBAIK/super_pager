// Copyright 2022 ABDULKARIM ALBAIK Author. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

library super_pager;

/* Imports */

import 'dart:ui';

import 'package:flutter/material.dart';

/* Main Class */

///Amazing SuperPager widget , you can use it for your pro UI/UX
// ignore: must_be_immutable
class SuperPager extends StatefulWidget {
  ///The Constructor of SuperPager.
  SuperPager(
      {Key? key,
      this.currentIndex = 0,
      required this.duration,
      required this.width,
      required this.height,
      required this.widgets})
      : assert(widgets.isNotEmpty),
        assert(width > 10),
        assert(height > 10),
        assert(currentIndex >= 0),
        super(key: key);

  /* Variables */

  ///[currentIndex] of The pager.
  int currentIndex;

  ///[width] of The pager.
  final double width;

  ///[height] of The pager.
  final double height;

  ///[duration] of The pager.
  Duration duration = const Duration(milliseconds: 300);

  ///[widgets] of The pager.
  final List<Widget> widgets;

  @override

  /// Creating state fo SuperPager.
  State<StatefulWidget> createState() => _SuperPagerState();
}

/// This class is represent ViewPager Widget.
class _SuperPagerState extends State<SuperPager> {
  /// custom variable for paging
  double _cardPage = 0.0;

  /// controller of pager
  late final PageController _pageController;

  @override

  /// When initialize the widget.
  void initState() {
    _pageController = PageController(viewportFraction: 0.77)
      ..addListener(_cardPageListener);

    _pageController.jumpToPage(widget.currentIndex);

    super.initState();
  }

  /// handle changes of pager.
  void _cardPageListener() {
    setState(() {
      _cardPage = _pageController.page!;
      widget.currentIndex = _pageController.page!.round();
    });
  }

  @override

  /// Building the widget.
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: PageView.builder(
        controller: _pageController,
        clipBehavior: Clip.none,
        itemCount: widget.widgets.length,
        itemBuilder: (context, index) {
          /// progress of pager.
          final progress = (_cardPage - index);

          /// scale of pager.
          final scale = lerpDouble(1, 8, progress.abs());

          /// checking if pager is scrolling
          // final isScrolling = _pageController
          //     .position.isScrollingNotifier.value;

          /// checking if pager is indexing to current page
          final isCurrentPage = index == widget.currentIndex;

          /// checking if pager is indexing to first page
          // final isFirstPage = index == 0;

          return Transform.scale(
            scale: scale,
            alignment:
                Alignment.lerp(Alignment.topLeft, Alignment.center, -progress),
            child: AnimatedContainer(
              duration: widget.duration,
              curve: Curves.easeInOut,
              transform: Matrix4.identity()
                ..translate(
                  isCurrentPage ? 0.0 : -20.0,
                  isCurrentPage ? 0.0 : 60.0,
                ),
              child: widget.widgets[index],
            ),
          );
        },
      ),
    );
  }
}
