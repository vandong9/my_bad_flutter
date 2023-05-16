import 'package:flutter/material.dart';
import 'package:product/product_detail/product_detail_page.dart';
import 'package:product/product_list/product_list_page.dart';
import 'package:share_ui/navigate_util.dart';

const rootModuleName = "/product";

enum Page { productList, productDetail }

extension PageNaming on Page {
  String pageName() {
    switch (this) {
      case Page.productList:
        return "$rootModuleName/productList";
      case Page.productDetail:
        return "$rootModuleName/productDetail";
    }
  }
}

showPage(BuildContext context, Page page, Object? param) {
  NavigateUtil.openPage(context, page.pageName());
}

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    Page.productList.pageName(): (context) => ProductListMVVMTemplateScreen(),
    Page.productDetail.pageName(): (context) =>
        ProductDetailMVVMTemplateScreen(),
  };
}
