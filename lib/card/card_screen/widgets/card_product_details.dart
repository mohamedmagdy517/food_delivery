import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: const Text(
                'Delivery Time',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.red,
                    ),
                    Container(
                        child: const Text(
                      '30 minutes',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
