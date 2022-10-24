import 'package:flutter/material.dart';

class SliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  const SliverHeader(
      {super.key, required this.backgroundColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: Delegate(backgroundColor, title),
      pinned: true,
      floating: false,
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String _title;

  const Delegate(this.backgroundColor, this._title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          _title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
