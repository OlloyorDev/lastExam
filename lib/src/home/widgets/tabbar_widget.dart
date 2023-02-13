import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      color: Colors.white70,
      padding: const EdgeInsets.only(left: 38.5, right: 38.5),
      child: TabBar(
        controller: tabController,
        indicatorColor: Color(0xfff0fb8d3),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Color(0xfff0fb8d3),
        unselectedLabelColor: Colors.black26,
        labelPadding: const EdgeInsets.symmetric(horizontal: 0),
        tabs: [
          Tab(
            text: 'Полёт',
            icon: SvgPicture.asset('assets/tabbar_svg/plane.svg'),
          ),
          Tab(
            text: 'Отель',
            icon: SvgPicture.asset('assets/tabbar_svg/bed.svg'),
          ),
          Tab(
            text: 'Туры',
            icon: SvgPicture.asset('assets/tabbar_svg/compass.svg'),
          ),
          Tab(
            text: 'Автопрокат',
            icon: SvgPicture.asset('assets/tabbar_svg/car.svg'),
          ),
        ],
      ),
    );
  }
}
