import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  NewWidget({
    super.key,
  });
  List newsPhoto = [
    'assets/news/photo1.png',
    'assets/news/photo2.png',
    'assets/news/photo3.png',
    'assets/news/photo4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " Новые предложение",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              height: 210,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newsPhoto.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xfff0fb8d3), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            height: 75.25,
                            width: 77.6,
                            margin: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(image: AssetImage(newsPhoto[index]),fit: BoxFit.cover)
                            ),
                          ),
                        ),
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
