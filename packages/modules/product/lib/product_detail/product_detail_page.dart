import 'package:flutter/material.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';
import 'product_detail_view_model.dart';

class ProductDetailMVVMTemplateScreen extends BaseMVVMScreen {
  const ProductDetailMVVMTemplateScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProductDetailBaseMVVMState();
}

class ProductDetailBaseMVVMState extends BaseMVVMState<
    ProductDetailMVVMTemplateScreen, ProductDetailBaseViewModel> {
  ProductDetailBaseMVVMState()
      : super(ProductDetailBaseViewModel(
            ProductDetailInput(), ProductDetailOutput()));

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
