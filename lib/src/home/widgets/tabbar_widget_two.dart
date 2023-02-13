import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabbarWidgetTwo extends StatelessWidget {
  TabbarWidgetTwo({
    super.key,
  });
  List name = ['Выберите дату', 'Эконом, 1', 'Фильтр'];
  List svg = [
    'assets/home_svg/calendar.svg',
    'assets/home_svg/user.svg',
    'assets/home_svg/sort.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 11),
        child: Container(
          height: 38,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Container(
                height: 32,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      SvgPicture.asset(svg[index]),
                      const SizedBox(width: 8),
                      Text(name[index].toString()),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
