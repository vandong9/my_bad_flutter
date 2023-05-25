import 'package:flutter/material.dart';

class ItemCellWidget extends StatelessWidget {
  ProductItemModel item;
  ItemCellWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.favorite,
              size: 11,
            )
          ],
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          foregroundDecoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.circular(18),
          ),
          height: 100,
          child: Builder(builder: (context) {
            return Stack(
              children: [
                item.image,
                Positioned(
                  bottom: 5,
                  left: 5,
                  right: 5,
                  child: Text(
                    item.price,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            );
          }),
        ),
        const Text("Product title"),
      ]),
    );
  }
}

class ProductItemModel {
  String title;
  Image image;
  String price;
  bool isLiked;

  ProductItemModel(this.title, this.image, this.price, this.isLiked);
  static ProductItemModel mockObject() {
    return ProductItemModel(
        "this.title",
        Image.asset(
          "assets/images/cate2.jpg",
          package: "product",
        ),
        "place",
        true);
  }
}
