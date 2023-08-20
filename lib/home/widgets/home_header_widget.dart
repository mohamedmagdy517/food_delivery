import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/appbar.dart';

class HomeScreenHeader extends StatelessWidget {
  HomeScreenHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return PopularAppBar(const Icon(CupertinoIcons.bars));
  }
}

// ignore: must_be_immutable
class CtaegoriesList extends StatelessWidget {
  CtaegoriesList({super.key});
  List<String> myList = ['drink', 'pizza', 'pizza', 'biryani'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) =>
                  ProductItem(myImage: 'assets/${myList[index]}.png')),
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String? text;
  final String myImage;
  final double? mHight;
  final double? mWidth;

  ProductItem({
    this.text,
    required this.myImage,
    this.mHight,
    this.mWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: 80,
            width: 80,
            child: Container(
                padding: EdgeInsets.all(20),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'cardwidget');
                    },
                    child: Image.asset('${this.myImage}'))),
          ),
        ),
      ],
    );
  }
}
