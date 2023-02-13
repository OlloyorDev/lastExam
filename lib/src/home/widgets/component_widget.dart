import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComponentWidget extends StatelessWidget {
  ComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          // height: 96,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/home_svg/flight-takeoff.svg'),
                      const SizedBox(width: 14.5),
                      const Text(
                        "Откуда",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xfff969696),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/home_svg/group.svg'),
                    ],
                  ),
                ),
              ),
              const Divider(thickness: 0.2, color: Colors.black26),
              Container(
                height: 48,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/home_svg/flight-land.svg'),
                      const SizedBox(width: 14.5),
                      const Text(
                        "Куда",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xfff969696),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
