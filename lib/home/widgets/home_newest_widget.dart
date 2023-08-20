import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class HomeNewestWidget extends StatelessWidget {
  HomeNewestWidget({super.key});

  // List<ProductItemNewest> newestList = [
  //   ProductItemNewest(
  //     myImage: 'assets/piryabi.png',
  //   ),
  //   ProductItemNewest(
  //     myImage: 'assets/pizza.png',
  //   )
  // ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20, top: 5),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Newest',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ProductItemNewest2(
            myImage: 'assets/drink.png',
            text: 'Fresh Drink',
          ),
          ProductItemNewest2(
            myImage: 'assets/pizza.png',
            text: 'Hot Pizza',
          ),
          // ProductItemNewest(),
        ],
      ),
    );
  }
}

class ProductItemNewest2 extends StatelessWidget {
  final String? text;
  final String myImage;
  final double? mHight;
  final double? mWidth;

  ProductItemNewest2({
    this.text,
    required this.myImage,
    this.mHight,
    this.mWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          child: Image.asset(
                            fit: BoxFit.fill,
                            '${this.myImage}',
                          ),
                        ),
                        Container(
                          // width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '${this.text}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  ' Taste Our Hot Pizza We \n provide our  Great Food',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              RatingBar.builder(
                                itemSize: 20,
                                // itemPadding: EdgeInsets.zero,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                itemBuilder: (context, _) => Container(
                                  // width: 30,
                                  // height: 30,
                                  child: const Icon(
                                    size: 11,
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                width: 150,
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  '10\$',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: const Icon(
                              size: 30,
                              color: Colors.red,
                              Icons.favorite_border_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
              height: 50,
              width: 50,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(blurRadius: 6, spreadRadius: 1, color: Colors.grey)
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            )),
      ],
    );
  }
}
