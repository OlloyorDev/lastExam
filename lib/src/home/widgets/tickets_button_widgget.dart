import 'package:flutter/material.dart';

class TicketsButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xfff0fb8d3),
              borderRadius: BorderRadius.circular(8)),
          child: const Text(
            "Найти билеты",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
