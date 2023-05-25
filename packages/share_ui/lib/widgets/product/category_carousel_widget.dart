import 'package:flutter/material.dart';

class CategoryCarouselViewModel {
  bool isShowHeader = true;
  Image? leftICon;
  Image? rightICon;
  String title = "";

  bool isShowFooter = true;

  List<dynamic> items = [];
}

class CategoryCarouselWidget extends StatelessWidget {
  CategoryCarouselViewModel viewModel = CategoryCarouselViewModel();

  CategoryCarouselWidget({super.key});
  Widget _header() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_header(), const Text("data")],
    );
  }
}

class CategoryHeaderWidget extends StatelessWidget {
  const CategoryHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CategoryFooterWidget extends StatelessWidget {
  const CategoryFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListItemWidget extends StatelessWidget {
  const ProductListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListItemCardWidget extends StatelessWidget {
  const ProductListItemCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
