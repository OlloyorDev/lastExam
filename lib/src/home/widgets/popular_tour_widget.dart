import 'package:flutter/material.dart';

class PopularTourWidget extends StatelessWidget {
  PopularTourWidget({
    super.key,
  });

  List photoList = [
    'assets/popular_photo/moscow.png',
    'assets/popular_photo/oclock.png',
    'assets/popular_photo/moscow.png',
    'assets/popular_photo/oclock.png'
  ];
  List placeName = ['Санк Петербург', 'Лондон', 'Санк Петербург', 'Лондон'];
  List price = ['1850000', '1850000', '1850000', '1850000'];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 11, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " Популярные направления",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              height: 202,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: photoList.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image:
                                    AssetImage(photoList[index].toString()))),
                      ),
                      Text(
                        "  ${placeName[index]}",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "  от ${price[index]} uzs",
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff64686b)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
