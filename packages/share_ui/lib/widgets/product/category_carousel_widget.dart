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
  Widget _header() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_header(), Text("data")],
    );
  }
}

class CategoryHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CategoryFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListItemCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
