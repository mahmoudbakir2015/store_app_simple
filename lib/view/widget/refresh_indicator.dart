import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicators extends StatelessWidget {
  RefreshIndicators({
    super.key,
    required this.child,
    required this.onRefresh,
    required this.globalKey,
  });

  Widget child;
  final Future Function() onRefresh;
  final GlobalKey<RefreshIndicatorState> globalKey;

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid) ? refreshAndroidWidget() : refreshIosWidget();
  }

  Widget refreshAndroidWidget() {
    return RefreshIndicator(
      child: child,
      onRefresh: onRefresh,
      key: globalKey,
    );
  }

  Widget refreshIosWidget() {
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
          key: globalKey,
        ),
        SliverToBoxAdapter(
          child: child,
        ),
      ],
    );
  }
}
