import 'package:flutter/material.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';
import 'product_list_view_model.dart';

class ProductListMVVMTemplateScreen extends BaseMVVMScreen {
  ProductListMVVMTemplateScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProductListBaseMVVMState();
}

/*
class AccountListScreen extends BaseMVVMScreen {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountListScreenState();
}
*/

class ProductListBaseMVVMState extends BaseMVVMState<
    ProductListMVVMTemplateScreen, ProductListBaseViewModel> {
  ProductListBaseMVVMState()
      : super(
            ProductListBaseViewModel(ProductListInput(), ProductListOutput()));

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is Product List"));
  }
}
