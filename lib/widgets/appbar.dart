import 'package:flutter/material.dart';
import '../constants/contants.dart';

class PopularAppBar extends StatelessWidget {
  final InkWell iconwithtap;
  PopularAppBar(this.iconwithtap, {super.key});

  final Constants _constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: _constants.PrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 3)),
                      ]),
                  child: Container(
                      padding: EdgeInsets.all(8), child: this.iconwithtap),
                ),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: _constants.PrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 3)),
                      ]),
                  child: Container(
                      padding: EdgeInsets.all(8),
                      child: const Icon(Icons.notifications)),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
