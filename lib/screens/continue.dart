import 'package:flutter/material.dart';
import '../pages/glassbox.dart';
import '../pages/mybottom.dart';
import '../pages/tab_option.dart';
import '../pages/tabs.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override

  State<New> createState() => _NewState();
}

class _NewState extends State<New> {

  List tabOption = [
    ["Recent", const RecentTab()],
    ["Trending", const TrendingTab()],
    ["Top", const TopTab()],
  ];
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }
  @override

  Widget build(BuildContext context) {

    return DefaultTabController(

      length: tabOption.length,
      child: Scaffold(



        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button


            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(

                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
