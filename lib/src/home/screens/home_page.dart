import 'dart:ffi';

import 'package:flutter/material.dart';
import '../widgets/component_widget.dart';
import '../widgets/news_widget.dart';
import '../widgets/popular_tour_widget.dart';
import '../widgets/tabbar_widget.dart';
import '../widgets/tabbar_widget_two.dart';
import '../widgets/tickets_button_widgget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: const Color(0xffe5e5e5e5),
        body: Column(
          children: [
            TabbarWidget(tabController: tabController),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  ComponentWidget(),
                  TabbarWidgetTwo(),
                  TicketsButtonWidget(),
                  PopularTourWidget(),
                  NewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
